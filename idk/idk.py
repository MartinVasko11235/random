from math import factorial as f

def c(n, k):
    if k > n:
        return 0
    return f(n)/(f(n-k)*f(k))

def main():
    i = 3
    mx = 0
    best_i = 0
    while c(i, 2) < 200000:
        if mx < 200000/i * c(i, 2):       
            mx = 200000/i * c(i, 2)
            best_i = i
        i += 1

    print(mx)
    print(best_i)
    print((200000**3)**0.5)
main()
