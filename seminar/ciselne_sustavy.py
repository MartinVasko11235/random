
def to_base_n(n: int, base: int) -> str:

    if base > 9:
        raise ValueError

    res: str = ""

    while n > 0:

        res = str(n%base) + res

        n //= base

    return res

def from_base_n(n: str, base: int) -> int:
    
    res: int = 0

    mul: int = 1

    for i in reversed(n):
        res += int(i)*mul
        mul *= base

    return res


def to_roman(n: int) -> str:

    res = "M"*(n//1000)

    n %= 1000

    i = 1

    literals = ["M", "D", "C", "L", "X", "V", "I"]

    while n > 0:

        a = n // (100 // 10 ** (i//2))
        n = n % (100 // 10 ** (i//2))

        res += literals[i+1]*a if a < 4 else literals[i+1] + literals[i] if a == 4 else literals[i] + literals[i+1]*(a-5) if a < 9 else literals[i+1] + literals[i-1]

        i += 2
    
    return res

def from_roman(n: str) -> int:

    literals = {"M":1000, "D":500, "C":100, "L":50, "X": 10, "I":1}
    res = 0

    for i in range(len(n)):

        if i < len(n)-1:
            if literals[n[i]] < literals[n[i+1]]:
                res -= literals[n[i]]
                continue
        
        res += literals[n[i]]
    
    return res

res = to_base_n(10, 3)
res2 = from_base_n("101", 3)
res3 = to_roman(1943)
res4 = from_roman("MCMXLIII")

print(res, res2, res3, res4)
