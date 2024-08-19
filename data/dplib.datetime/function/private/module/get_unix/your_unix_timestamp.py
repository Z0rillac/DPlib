import tkinter as tk
import time

def update_time():
    current_time = round(time.time(),2)
    time_label.config(text=str(current_time))
    window.after(10, update_time)

window = tk.Tk()
window.title("Timestamp")
window.geometry("300x100")

time_label = tk.Label(window, text="", font=("Helvetica", 20))
time_label.grid(row=0, column=0, padx=10, pady=10, sticky="w")

update_time()

window.mainloop()

# Your live computer timestamp, useful to know if the value in minecraft is correct.