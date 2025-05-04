import random
from math import factorial as fact


def roll():
    return random.randint(1, 6)

def C(n, k):
    return fact(n) // (fact(k) * fact(n - k))

def bernulli(p, n, k):
    return C(n, k) * p ** k * (1 - p) ** (n - k)
