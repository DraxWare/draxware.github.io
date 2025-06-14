import customtkinter as ctk
import tkinter as tk
from tkinter.colorchooser import askcolor
import json, os

ctk.set_appearance_mode("Dark")
ctk.set_default_color_theme("blue")

CONFIG_DIR = os.path.join(os.path.expanduser("~"), ".jons_ui_configs")
os.makedirs(CONFIG_DIR, exist_ok=True)

class Library:
    @staticmethod
    def CreateWindow(title, disable_themes=False):
        if disable_themes:
            ctk.set_default_color_theme("default")
        return Window(title)

    @staticmethod
    def CreateNotification(title, text, duration):
        popup = ctk.CTkToplevel()
        popup.title(title)
        popup.attributes("-topmost", True)
        ctk.CTkLabel(popup, text=text, wraplength=300).pack(padx=20, pady=10)
        popup.after(int(duration * 1000), popup.destroy)

    @staticmethod
    def CreatePrompt(ptype, title, text, data):
        win = ctk.CTkToplevel()
        win.title(title)
        win.attributes("-topmost", True)
        ctk.CTkLabel(win, text=text, wraplength=300).pack(pady=10)
        if ptype in ("OneButton", "Text"):
            btn_text, callback = data
            ctk.CTkButton(win, text=btn_text, command=lambda: (callback(), win.destroy())).pack(pady=5)
        else:
            for i in range(0, len(data), 2):
                btn_text, callback = data[i], data[i+1]
                ctk.CTkButton(win, text=btn_text, command=lambda cb=callback: (cb(), win.destroy())).pack(pady=5)

class Window:
    def __init__(self, title):
        self.app = ctk.CTk()
        self.app.title(title)
        self.app.geometry("800x600")
        self.app.protocol("WM_DELETE_WINDOW", self.app.quit)
        self.tabview = ctk.CTkTabview(self.app)
        self.tabview.pack(expand=True, fill="both")
        self.sections = {}
        self.keybinds = {}
        self.visible = True

    def CreateTab(self, name, selected=False, icon=None, pos=(0, 0), size=(0, 0)):
        self.tabview.add(name)
        frame = ctk.CTkScrollableFrame(self.tabview.tab(name), corner_radius=15)
        frame.pack(fill="both", expand=True, padx=10, pady=10)
        if selected:
            self.tabview.set(name)
        return SectionContainer(self, frame)

    def ToggleUI(self):
        if self.visible:
            self.app.withdraw()
        else:
            self.app.deiconify()
        self.visible = not self.visible

    def DestroyUI(self):
        self.app.quit()

    def SetTransparency(self, alpha, alert=False):
        self.app.attributes("-alpha", alpha)
        if alert:
            self.app.bell()

    def SaveConfig(self, name):
        state = {}
        path = os.path.join(CONFIG_DIR, f"{name}.json")
        for sec in self.sections.values():
            state.update(sec.serialize())
        with open(path, "w") as f:
            json.dump(state, f, indent=2)

    def LoadConfig(self, name):
        path = os.path.join(CONFIG_DIR, f"{name}.json")
        if not os.path.isfile(path): return
        with open(path) as f:
            state = json.load(f)
        for sec in self.sections.values():
            sec.load(state)

    def GetConfigs(self):
        return [os.path.splitext(f)[0] for f in os.listdir(CONFIG_DIR) if f.endswith(".json")]

    def DeleteConfig(self, name):
        path = os.path.join(CONFIG_DIR, f"{name}.json")
        if os.path.isfile(path): os.remove(path)

    def ChangeTheme(self, name):
        ctk.set_default_color_theme(name)

    def GetThemes(self):
        return ctk.ThemeManager.theme_names()

    def ReturnTheme(self):
        return ctk.ThemeManager.get_theme()

    def run(self):
        self.app.mainloop()

class SectionContainer:
    def __init__(self, window, frame):
        self.window = window
        self.frame = frame

    def CreateSection(self, title):
        header = ctk.CTkLabel(self.frame, text=title, font=ctk.CTkFont(size=16, weight="bold"))
        header.pack(anchor="w", pady=(10,5))
        f = ctk.CTkFrame(self.frame, corner_radius=15)
        f.pack(fill="x", padx=10, pady=5)
        sec = Section(f, self.window)
        self.window.sections[title] = sec
        return sec

class Section:
    def __init__(self, parent, window):
        self.parent = parent
        self.window = window
        self.controls = {}

    def _tooltip(self, widget, hover, text):
        if hover:
            tip = tk.Label(self.parent, text=text, bg="yellow")
            def enter(e): tip.place(x=e.x_root - self.parent.winfo_rootx(), y=e.y_root - self.parent.winfo_rooty()+20)
            def leave(e): tip.place_forget()
            widget.bind("<Enter>", enter)
            widget.bind("<Leave>", leave)

    def CreateLabel(self, text, hover=False, hover_text=""):
        lbl = ctk.CTkLabel(self.parent, text=text)
        lbl.pack(anchor="w", pady=2)
        self._tooltip(lbl, hover, hover_text)
        return lbl

    def CreateParagraph(self, title, content):
        lbl = ctk.CTkLabel(self.parent, text=f"{title}\n{content}", wraplength=600, justify="left")
        lbl.pack(anchor="w", pady=5)
        return lbl

    def CreateButton(self, text, callback, hover=False, hover_text=""):
        btn = ctk.CTkButton(self.parent, text=text, command=callback)
        btn.pack(anchor="w", pady=5)
        self._tooltip(btn, hover, hover_text)
        return btn

    def CreateSlider(self, name, minv, maxv, precise, color, callback):
        var = tk.DoubleVar(value=minv)
        slider = ctk.CTkSlider(self.parent, from_=minv, to=maxv, variable=var, number_of_steps=None if precise else (maxv-minv))
        slider.configure(button_color=f"#{color[0]:02x}{color[1]:02x}{color[2]:02x}")
        slider.pack(fill="x", pady=5)
        slider.bind("<ButtonRelease-1>", lambda e: callback(var.get()))
        self.controls[name] = var
        return slider

    def CreateTextbox(self, name, placeholder, callback):
        ent = ctk.CTkEntry(self.parent, placeholder_text=placeholder)
        ent.pack(fill="x", pady=5)
        ent.bind("<Return>", lambda e: callback(ent.get()))
        self.controls[name] = ent
        return ent

    def CreateKeybind(self, name, default, callback):
        var = tk.StringVar(value=default)
        btn = ctk.CTkButton(self.parent, text=f"{name}: {default}")
        def on_press(e, var=var):
            var.set(e.keysym)
            btn.configure(text=f"{name}: {var.get()}")
            callback()
        self.parent.bind_all("<Key>", on_press)
        btn.pack(anchor="w", pady=5)
        self.controls[name] = var
        return btn

    def CreateToggle(self, name, default, color, debounce, callback):
        var = tk.BooleanVar(value=default)
        sw = ctk.CTkSwitch(self.parent, text=name, variable=var, onvalue=True, offvalue=False)
        sw.pack(anchor="w", pady=5)
        var.trace_add('write', lambda *args: callback(var.get()))
        self.controls[name] = var
        return sw

    def CreateDropdown(self, name, options, default, searchable, debounce, callback):
        var = tk.StringVar(value=default)
        opt = ctk.CTkOptionMenu(self.parent, variable=var, values=options)
        opt.pack(fill="x", pady=5)
        var.trace_add('write', lambda *args: callback(var.get()))
        self.controls[name] = var
        return opt

    def CreateColorpicker(self, name, default_color, debounce, callback):
        btn = ctk.CTkButton(self.parent, text=name, fg_color=f"#{default_color[0]:02x}{default_color[1]:02x}{default_color[2]:02x}")
        def pick():
            col = askcolor()[0]
            if col:
                callback(tuple(int(c) for c in col))
                btn.configure(fg_color=f"#{int(col[0]):02x}{int(col[1]):02x}{int(col[2]):02x}")
        btn.configure(command=pick)
        btn.pack(anchor="w", pady=5)
        self.controls[name] = btn
        return btn

    def CreateImage(self, name, url, size):
        from urllib.request import urlopen
        from PIL import Image, ImageTk
        data = urlopen(url).read()
        img = Image.open(tk.BytesIO(data)).resize(size)
        tk_img = ImageTk.PhotoImage(img)
        lbl = ctk.CTkLabel(self.parent, image=tk_img, text="")
        lbl.image = tk_img
        lbl.pack(anchor="w", pady=5)
        return lbl

    # Serialization
    def serialize(self):
        out = {}
        for k, c in self.controls.items():
            if isinstance(c, tk.Variable):
                out[k] = c.get()
        return out

    def load(self, data):
        for k, val in data.items():
            c = self.controls.get(k)
            if isinstance(c, tk.Variable):
                c.set(val)
