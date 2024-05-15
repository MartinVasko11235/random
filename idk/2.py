


def main():

    a = [int(i) for i in input().split()]
    d = [int(i) for i in input().split()]

    set_a = set(a)

    best = []
    min_ = 1000000

    for i in range(2**len(a)):

        visited = [False]*len(a)
        
        binar = bin(i)[2:]
        binar = "0"*(len(a)-len(binar))+binar

        pouzite = []

        for j in range(len(a)):
            if binar[j] == "1":
                pouzite.append(a[j])
                visited[j] = True
                for k in d:
                    if a[j]+k in set_a:
                        visited[a.index(a[j]+k)] = True
                    if a[j]-k in set_a:
                        visited[a.index(a[j]-k)] = True
        
        if all(visited):
            if len(pouzite) < min_:
                min_ = len(pouzite)
                best = pouzite

    print(min_)
    print(*best)
                    
                
main()




