n = 5
res = 0
for i in range(6**n):
    sm = 0
    for j in range(n):
        sm += (i//(6**j))%6
    sm += 3
    if sm == 20:
        res += 1
print(res)