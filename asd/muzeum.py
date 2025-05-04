from collections import defaultdict
s = defaultdict(lambda: (0, False))
mx, curr, people, sm, best_h = 0, 0, 0, 0, 0
with open("muzeum.txt", "r") as file:
    for line in file.readlines():
        num, time = line.split()
        h, m = time.split(":")
        num, time = int(num), int(h) + int(m)*60
        if s[num][1]:
            sm += time - s[num][0]
            curr -= 1
            s[num] = (time, False)
        else:
            people += 1
            curr += 1
            if curr > mx:
                mx = curr
                best_h = h
            s[num] = (time, True)
print(sm/people)
print(h)

