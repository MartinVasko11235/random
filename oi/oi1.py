def main():
    t, n = map(int, input().split())

    edges = [(0, 0, 0)]*n

    for i in range(n):
        a, b, d = map(int, input().split())
        a -= 1
        b -= 1
        edges[i] = (a, b, -d)


    changed = False
    dist = [0]*t

    for i in range(t):
        changed = False
        for e in edges:
            if dist[e[1]] - dist[e[0]] > e[2]:
                changed = True
                dist[e[1]] = dist[e[0]] + e[2]
        if not changed:
            break
    
    if changed:
        print("neexistuje")
    else:
        for i in range(t):
            print(dist[i], end = '\n' if i == t-1 else ' ')

main()

