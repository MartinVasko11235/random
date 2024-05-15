import tkinter as tk

root = tk.Tk()

root.title("idk")

root.geometry("500x500")

label1 = tk.Label(root, text = "zadaj prve cislo")
label1.pack()

entry1 = tk.Entry()
entry1.pack()

label2 = tk.Label(root, text = "zadaj druhe cislo")
label2.pack()

entry2 = tk.Entry()
entry2.pack()

def cmd1():
    a = int(entry1.get())
    b = int(entry2.get())
    label3.config(text=str(a+b))


button = tk.Button(root, text = "spocitaj", command=cmd1)
button.pack()

label3 = tk.Label(root)
label3.pack()




root.mainloop()