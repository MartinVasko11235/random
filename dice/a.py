from lib import roll

res = 0

for i in range(100000):
    
    last_roll = roll()
    curr = 2
    while not (last_roll == (last_roll := roll()) and last_roll == 6):
        curr += 1
        
    res += curr

print(res / 100000)

res2 = 0

for i in range(100000):
    
    curr = 0
    while not (roll() == 6 and roll() == 6):
        curr += 1

    res2 += curr

print(res2 / 100000)
