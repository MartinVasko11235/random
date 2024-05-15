
def solve():
    h = int(input())

    mena = []

    for i in range(h):
        idk = input()
        mena.append(idk)

    k = int(input())

    res = 0

    mn = set()

    for i in range(k):
        meno = input()
        mn.update((meno,))

        if len(mn) == h:
            mn.clear()
            mn.update((meno,))
            res += 1


    print(res)





t = int(input())

for i in range(t):
    solve()