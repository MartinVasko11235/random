struct asd {
    a: int,
    s: int,
    d: bool
}


fn find(a: int, arr: [int]) -> found = false{
    for i in arr {
        if a == i {
            found = true;
            return;
        }
    }
}

fn find(a: int, arr: [int]) -> found: bool = false{
    for i in arr {
        if a == i {
            return true; // same as found = true; return;
        }
    }
}

fn apply(f: (int, [int]) -> bool, a: int, arr: [int]) -> f(a, arr);

fn fib(n: int, memo: &[int]) -> memo[n] {
    if memo[n] == -1{
        memo[n] = fib(n-1, memo) + fib(n-2, memo);
    }
}

fn bin_search(val: int, arr: [int]) -> _: bool = false {
    let (l, r) = (0, arr.size-1);
    while l <= r {
        let m = (l+r) / 2;
        if arr[m] == val {
            return true;
        }
        elif arr[m] < val {
            l = m + 1;
        }
        else {
            r = m - 1;
        }
    }
}
