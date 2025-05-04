from lib import fact

for i in range(6, 20):
    print(
        i, (720*(i-5)*6**(i-6))/6**i
    )