
n = int(input("Zadaj pocet hracov: "))

hraci = []*n

for i in range(n):
    hraci.append(input(f"Zadaj meno hraca {i+1}: "))

tah = 0

tahy = []

for i in range(n):
    tahy.append([])

body = []

for i in range(n):
    body.append(0)

while (True):

    for i in range(n):
        print(hraci[i], body[i], end=", ")
    
    print()

    tmp = input(f"{hraci[tah%n]} >>> ")

    if tmp == "ahoj":

        for i in range(n):
            print(hraci[i], end=": ")
            for j in tahy[i]:
                print(j, end=" ")
            print()

    if tmp == "exit":
        for i in range(n):
            print(hraci[i], end=": ")
            for j in tahy[i]:
                print(j, end=" ")
            print()

        for i in range(n):
            print(hraci[i], body[i], end=", ")

    try:
        body[tah%n] += int(tmp)
        tahy[tah%n].append(int(tmp))
        tah += 1
    except:
        pass