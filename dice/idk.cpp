#include <bits/stdc++.h>

#define vec vector
#define For(i, n) for (int i = 0; i < n; i++)
using namespace std;

void solve()
{
    int n;
    cin >> n;
    vec<int> a(n);

    For(i, n)
    {
        cin >> a[i];
    }

    if (n == 1)
    {
        cout << "1 1\n";
        return;
    }

    int not_one = 0;
    vec<int> cnt(n, 0);

    For(i, n)
    {
        cnt[a[i]]++;
    }

    int l = 0;
    int r = 0;
    int best = 0;
    int best_l = 0;
    int best_r = 0;

    if (cnt[a[0]] != 1)
        not_one++;

    while (r < n)
    {
        r++;
        if (cnt[a[r]] != 1)
            not_one++;

        while (not_one > 0 && l < r)
        {
            if (cnt[a[l]] != 1)
                not_one--;
            l++;
        }

        if (r - l + 1 > best && not_one == 0)
        {
            best = r - l + 1;
            best_l = l;
            best_r = r;
        }
    }

    if (best == 0)
    {
        cout << "0\n";
        return;
    }

    cout << best_l + 1 << ' ' << best_r + 1 << '\n';
}

int main()
{
    int t = 1;
    cin >> t;
    while (t--)
        solve();
    return 0;
}