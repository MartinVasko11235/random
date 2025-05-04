from lib import roll

res = 0

for i in range(1000):

    count = [0] * 6
    todo = 6
    step = 0
    while todo:
        curr = roll()
        step += 1
        count[curr - 1] += 1
        if count[curr - 1] == 2:
            todo -= 1
    
    res += step

print(res / 1000)