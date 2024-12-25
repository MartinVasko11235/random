import tkinter as tk

# Define the size of the grid
rows = 12
columns = 8

# Define a mapping from triplets to colors
triplet_to_color = {
    '000': 'black',
    '001': 'blue',
    '010': 'green',
    '011': 'cyan',
    '100': 'red',
    '101': 'magenta',
    '110': 'yellow',
    '111': 'white'
}

# Read the triplets from the file
with open("obrazok.txt", "r") as file:
    line = file.readline().strip()
    triplets = [line[i:i+3] for i in range(0, len(line), 3)]

# Create the main window
window = tk.Tk()

# Create a grid of colored squares
for row in range(rows):
    for col in range(columns):
        triplet = triplets[row * columns + col]
        color = triplet_to_color.get(triplet, 'black')  # Default to black if triplet not found
        square = tk.Frame(window, width=30, height=30, bg=color)
        square.grid(row=row, column=col)

# Start the main event loop
window.mainloop()