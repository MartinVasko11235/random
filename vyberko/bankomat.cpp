#include <bits/stdc++.h>

using namespace std;

#define ll long long

#define FOR(i, n) for (int i = 0; i < n; i++)
#define FORS(i, s, n) for (int i = s; i < n; i++)
#define RFOR(i, n) for (int i = n - 1; i >= 0; i--)
#define RFORS(i, s, n) for (int i = n - 1; i >= s; i--)

using vi = vector<int>;
using vll = vector<ll>;
using pii = pair<int, int>;
using pll = pair<ll, ll>;

void solve()
{
    int c;
    cin >> c;
    int n;
    cin >> n;

    vi dp(c + 1, INT_MAX);
    dp[0] = -1;

    FOR(i, n)
    {
        ll p, d;
        cin >> p >> d;
        vi last_mod(d, -1);
        FOR(j, c + 1)
        {
            if (dp[j] < i)
            {
                int md = j % d;
                last_mod[md] = max(j, last_mod[md]);

                while ((ll)(last_mod[md] - j) < p * d)
                {
                    last_mod[md] += d;
                    if (last_mod[md] > c)
                        break;
                    dp[last_mod[md]] = min(i, dp[last_mod[md]]);
                }
            }
        }
    }

    RFOR(i, c + 1)
    {
        if (dp[i] < INT_MAX)
        {
            cout << i << '\n';
            break;
        }
    }
}

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);

    int t = 1;

    cin >> t;

    while (t--)
    {
        solve();
    }

    return 0;
}