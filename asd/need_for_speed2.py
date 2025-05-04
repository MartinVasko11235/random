import tkinter, random
canvas = tkinter.Canvas(width=800, height=1000, background='green')
canvas.pack()
road = [350]*100
car_pos = 400
def left(e):
    global car_pos, car
    car_pos -= 10
    canvas.move(car, -10, 0)
def right(e):
    global car_pos, car
    car_pos += 10
    canvas.move(car, 10, 0)
canvas.bind_all('<Left>', left)
canvas.bind_all('<Right>', right)
while road[-1] <= car_pos < road[-1]+100:
    road = [road[0] + random.choice([-10, 10])] + road[:-1]
    road[0] = max(10, min(790, road[0]))
    canvas.after(100)
    canvas.update()
    canvas.delete('all')
    for i in range(len(road)):
        canvas.create_rectangle(road[i], i*10, road[i]+100, i*10+10, fill='gray', outline='gray')
    car = canvas.create_rectangle(car_pos, 990, car_pos+10, 1000, fill='red')
canvas.create_text(400, 500, text='GAME OVER', font='Arial 100 bold', fill='red')
canvas.unbind_all('<Left>')
canvas.unbind_all('<Right>')
canvas.mainloop()