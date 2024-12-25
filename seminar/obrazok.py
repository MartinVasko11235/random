import tkinter

canvas = tkinter.Canvas(width=800, height=600)
canvas.pack()

colors = {
    "000": "black",
    "001": "blue",
    "010": "green",
    "011": "cyan",
    "100": "red",
    "101": "magenta",
    "110": "yellow",
    "111": "white"
}


file = open("obrazok.txt", "r")

line = file.readline()

for i in range(0, len(line), 3):
    idx = i//3
    canvas.create_rectangle((idx%8)*30, (idx//8)*30, (idx%8+1)*30, (idx//8+1)*30, fill=colors[line[i:i + 3]])

canvas.mainloop()