#include <bits/stdc++.h>

using namespace std;

#define ll long long

#define ALL(a) a.begin(), a.end()
#define FOR(i, n) for (int i = 0; i < n; i++)
#define FORS(i, s, n) for (int i = s; i < n; i++)
#define RFOR(i, n) for (int i = n - 1; i >= 0; i--)
#define RFORS(i, s, n) for (int i = n - 1; i >= s; i--)
#define vec vector

using vi = vector<int>;
using vll = vector<ll>;
using pii = pair<int, int>;
using pll = pair<ll, ll>;

void solve()
{
    int n;
    cin >> n;

    vec<pii> temp(n);

    for (auto &[a, b] : temp)
    {
        cin >> a >> b;
    }

    sort(ALL(temp), [](pii a, pii b)
         { return a.first < b.first; });

    int sq = sqrt(n) + 1;

    vec<vec<pii>> stat(sq);
    vec<pii> min_max(sq, {INT_MAX, 0});

    FOR(i, n)
    {
        stat[i / sq].emplace_back(temp[i]);
        min_max[i / sq].first = min(min_max[i / sq].first, temp[i].first);
        min_max[i / sq].second = max(min_max[i / sq].second, temp[i].first);
    }

    FOR(i, sq)
    {
        sort(ALL(stat[i]), [](pii a, pii b)
             { return a.second < b.second; });
    }

    int q;
    cin >> q;

    vi res(q + 4, 0);
    int a, b, c, d;
    int e, f, g, h;
    FORS(i, 4, q + 4)
    {
        cin >> e >> f >> g >> h;
        a = e ^ res[i - 4];
        b = f ^ res[i - 3];
        c = g ^ res[i - 2];
        d = h ^ res[i - 1];

        if (a > b)
            swap(a, b);
        if (c > d)
            swap(c, d);

        int sm = 0;

        FOR(j, sq)
        {
            if (min_max[j].first >= a && min_max[j].second <= b)
            {
                auto it1 = lower_bound(stat[j].begin(), stat[j].end(), make_pair(c, c), [](pii a, pii b)
                                       { return a.second < b.second; });
                auto it2 = upper_bound(stat[j].begin(), stat[j].end(), make_pair(d, d), [](pii a, pii b)
                                       { return a.second < b.second; });
                sm += it2 - it1;
            }
            else if (min_max[j].first > b || min_max[j].second < a)
            {
                // sm += 0;
            }
            else
            {
                for (auto elem : stat[j])
                {
                    if (elem.first >= a && elem.first <= b && elem.second >= c && elem.second <= d)
                        sm++;
                }
            }
        }

        res[i] = sm;
    }

    FORS(i, 4, q + 4)
    {
        cout << res[i] << '\n';
    }
}

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);

    int t = 1;

    while (t--)
    {
        solve();
    }

    return 0;
}