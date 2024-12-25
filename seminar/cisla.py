n = int(input())

cifry = 0
sum = 0

while sum < n:
    cifry += 1
    sum += 9*cifry*10**(cifry-1)

res1 = 10**cifry + (n - sum)//cifry
res2 = str(res1)[(n-sum)%cifry]

print(res1, res2)

