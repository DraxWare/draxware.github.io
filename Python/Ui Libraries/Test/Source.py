import customtkinter as ctk
import tkinter as tk
import os, json

ctk.set_appearance_mode("Dark")
DEFAULT_THEME = "blue"
CONFIG_PATH = "uisettings/"
THEME_PATH = "themes/"

class Library:
  @staticmethod
  def CreateWindow(title, disable_themes=False):
    if disable_themes:
      ctk.set_default_color_theme("default")
    else:
      ctk.set_default_color_theme(DEFAULT_THEME)
    return Window(title)

  @staticmethod
  def CreateNotification(title, text, duration):
    popup = ctk.CTkToplevel()
    popup.title(title)
    ctk.CTkLabel(popup, text=text).pack(padx=20, pady=10)
    popup.after(int(duration*1000), popup.destroy)

  @staticmethod
  def CreatePrompt(ptype, title, text, data):
    win = ctk.CTkToplevel()
    win.title(title)
    ctk.CTkLabel(win, text=text, wraplength=300).pack(pady=10)
    if ptype == "Text":
      ctk.CTkButton(win, text=data, command=win.destroy).pack(pady=10)
    else:
      for i in range(0, len(data), 2):
        bt, cb = data[i], data[i+1]
        ctk.CTkButton(win, text=bt, command=lambda cb=cb, win=win: (cb(), win.destroy())).pack(pady=5)

  # Further: ToggleUI, DestroyUI, Theme controls, Configs...

class Window:
  def __init__(self, title):
    self.app = ctk.CTk()
    self.app.title(title)
    self.tabs = ctk.CTkTabview(self.app)
    self.tabs.pack(expand=True, fill="both")
    self.sections = {}
    self.keybinds = {}
    self.visible = True

  def CreateTab(self, name, selected=False, icon=None, pos=(0,0), size=(0,0)):
    tab = self.tabs.add(name)
    frame = ctk.CTkScrollableFrame(self.tabs.tab(name), corner_radius=15)
    frame.pack(fill="both", expand=True, padx=10, pady=10)
    if selected:
      self.tabs.set(name)
    return SectionContainer(self, frame)

  def run(self):
    self.app.mainloop()

  # ToggleUI, DestroyUI, SetTransparency, Config and Theme functions ...

class SectionContainer:
  def __init__(self, window, frame):
    self.window = window
    self.frame = frame

  def CreateSection(self, title):
    hdr = ctk.CTkLabel(self.frame, text=title, font=ctk.CTkFont(size=16, weight="bold"))
    hdr.pack(anchor="w", pady=(10,5))
    section = ctk.CTkFrame(self.frame, corner_radius=15)
    section.pack(fill="x", padx=10, pady=5)
    return Section(section, self.window)

class Section:
  def __init__(self, parent, window):
    self.parent = parent
    self.window = window

  def _attach_tooltip(self, widget, hover, hover_text):
    if hover:
      tip = tk.Label(self.parent, text=hover_text, bg="yellow")
      def on_enter(e): tip.place(x=e.x_root - self.parent.winfo_rootx(), y=e.y_root - self.parent.winfo_rooty() + 20)
      def on_leave(e): tip.place_forget()
      widget.bind("<Enter>", on_enter)
      widget.bind("<Leave>", on_leave)

  def CreateLabel(self, text, hover=False, hover_text=""):
    lbl = ctk.CTkLabel(self.parent, text=text)
    lbl.pack(anchor="w", pady=2)
    self._attach_tooltip(lbl, hover, hover_text)
    return lbl

  def CreateButton(self, text, callback, hover=False, hover_text=""):
    btn = ctk.CTkButton(self.parent, text=text, command=callback)
    btn.pack(anchor="w", pady=5)
    self._attach_tooltip(btn, hover, hover_text)
    return btn
