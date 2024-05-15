from random import randint

def main():
    dobre = 0
    
    for i in range(1000000):

        pocet_zien = 0 

        for j in range(10):

            if randint(0, 9) < 3:
                pocet_zien += 1

        if pocet_zien > 5:
            dobre += 1


    print(dobre/1000000)

main()
