def main():
    
    tlaciva = [0]*1000000
    pocty = []

    for i in range(1000000):
        pocty.append(set())

    n = int(input())

    pointer = 0

    output = []

    for i in range(n):
        temp = input()
        if temp == "INV":
            for e in pocty[pointer]:
                output.append(e)
                break
            continue

        tlacivo = int(temp)

        if tlacivo < 0:
            tlacivo *= -1
            pocty[tlaciva[tlacivo]].remove(tlacivo)
            if pointer == tlaciva[tlacivo] and len(pocty[tlaciva[tlacivo]]) == 0:
                pointer -= 1
            pocty[tlaciva[tlacivo]-1].add(tlacivo)
            tlaciva[tlacivo] -= 1

        elif tlacivo > 0:
            try:
                pocty[tlaciva[tlacivo]].remove(tlacivo)
            except:
                pass
            pocty[tlaciva[tlacivo]+1].add(tlacivo)
            if pointer < tlaciva[tlacivo]+1:
                pointer = tlaciva[tlacivo]+1
            tlaciva[tlacivo] += 1

    for i in output:
        print(i)


main() 

        
            
