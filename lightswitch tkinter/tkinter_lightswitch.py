import tkinter as tk
from tkinter.ttk import Button

window = tk.Tk()

btn = tk.Button(text = 'lightswitch', bg = 'black', fg = 'white')
btn.pack(pady = 90, padx = 100)

# schijf hier tussen je code

variable = 1

def lightswitch(event):
    global variable
    if variable == 1:
        btn.config(text = 'light on', bg = 'black', fg = 'white')
        window['bg'] = 'black'
        print('Light is off')
        variable = 2
    elif variable == 2:
        btn.config(text = 'light off', bg = 'white', fg = 'black')
        window['bg'] = 'white'
        print('Light is on')
        variable = 1

btn.bind("<Button-1>", lightswitch)

window['bg'] = 'black'

# schijf hier tussen je code

window.mainloop()