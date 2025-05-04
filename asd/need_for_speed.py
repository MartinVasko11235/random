import tkinter, random
canvas = tkinter.Canvas(width=800, height=1000, background='green')
canvas.pack()
road = [350]*100
car_pos = 400
turn = 0
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
while True:
    canvas.delete('all')
    for i in range(100):
        canvas.create_rectangle(road[i], (i+turn)%100*10, road[i]+100, (i+turn)%100*10+10, fill='gray', outline='gray')
    car = canvas.create_rectangle(car_pos, 990, car_pos+10, 1000, fill='red')
    canvas.update()
    if car_pos < road[99-turn%100] or car_pos > road[99-turn%100]+100:
        break
    road[99-turn%100] = road[99-(turn-1)%100] + random.choice([-10, 10])
    road[99-turn%100] = max(10, min(790, road[99-turn%100]))
    turn += 1
    canvas.after(100)
canvas.create_text(400, 500, text='GAME OVER', font='Arial 100 bold', fill='red')
canvas.unbind_all('<Left>')
canvas.unbind_all('<Right>')
canvas.mainloop()