import customtkinter as ctk

ctk.set_appearance_mode("Dark")
ctk.set_default_color_theme("blue")

class Library:
    @staticmethod
    def CreateWindow(title: str, topmost: bool = False):
        class Window:
            def __init__(self):
                self.app = ctk.CTk()
                self.app.title(title)
                self.app.geometry("800x600")
                self.app.attributes('-topmost', topmost)
                self.tabs = {}
                self.tab_frame = ctk.CTkTabview(self.app)
                self.tab_frame.pack(expand=True, fill="both")

            def CreateTab(self, name, selected=False, icon=None, pos=(0, 0), size=(0, 0)):
                tab = self.tab_frame.add(name)
                section_holder = {}

                class Tab:
                    def CreateSection(inner_self, title):
                        frame = ctk.CTkFrame(tab, corner_radius=15)
                        frame.pack(pady=10, padx=10, fill='x')

                        label = ctk.CTkLabel(frame, text=title, font=ctk.CTkFont(weight="bold"))
                        label.pack(anchor='w', pady=(0, 5))

                        class Section:
                            def CreateLabel(self, text, hover=False, hover_text=""):
                                lbl = ctk.CTkLabel(frame, text=text)
                                lbl.pack(anchor='w')
                                if hover:
                                    def on_enter(_): lbl.configure(text=f"{text} ({hover_text})")
                                    def on_leave(_): lbl.configure(text=text)
                                    lbl.bind("<Enter>", on_enter)
                                    lbl.bind("<Leave>", on_leave)

                            def CreateButton(self, text, command, hover=False, hover_text=""):
                                btn = ctk.CTkButton(frame, text=text, command=command)
                                btn.pack(anchor='w', pady=5)
                                if hover:
                                    def on_enter(_): btn.configure(text=f"{text} ({hover_text})")
                                    def on_leave(_): btn.configure(text=text)
                                    btn.bind("<Enter>", on_enter)
                                    btn.bind("<Leave>", on_leave)

                        section_holder[title] = Section()
                        return section_holder[title]

                self.tabs[name] = Tab()
                return self.tabs[name]

            def run(self):
                self.app.mainloop()

        return Window()
