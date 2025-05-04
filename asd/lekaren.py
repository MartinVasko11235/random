a = []

with open("lekaren.txt", "r") as file:
    for line in file.readlines():
        id, h, m, s, p = map(int, line.split())
        a.append((3600*h + 60*m + s, p, id))

a.sort()

last = 0

for time, p, id in a:
    last = max(time, last) + 30*(p+1)
    print(f"{id}    {last//3600:02d}:{last//60%60:02d}:{last%60:02d}")
    