n = 0 
domy = []


count = [0]*n

for i in domy:
    if domy <= n:
        count[i] += 1

volne = n
postavene = 0
postavene_s_vyskou = [0]*n
max_vyska = 0

for i in range(n):
    nove_domy = min((count[i], volne))
    postavene += nove_domy
    volne -= max((2, nove_domy))
    postavene_s_vyskou[i] = nove_domy
    if nove_domy > 0:
        max_vyska = i

for i in range(len(postavene_s_vyskou)):
    print(f"{i} "*(postavene_s_vyskou[i]-1))
    
for i in range(max_vyska, 0, -1):
    print(i)
