#include <bits/stdc++.h>

using namespace std;


typedef vector<int> vi;

typedef long long ll;


void solve(){

    int n; cin >> n;

    vi a(n);

    for (int i = 0; i < n; i++)
    {
        int x; cin >> x;

        a[i] = x;
    }

    int k; cin >> k;

    int cmin = INT_MAX;

    vi mins(n);

    for (int i = n-1; i >= 0; i--)
    {
        cmin = min(cmin, a[i]);
        mins[i] = cmin;
    }

    int coins_left = k;

    int minus_prize = 0;

    vi res(n, 0);

    if (coins_left < mins[0]){
        for (int i = 0; i < n; i++)
        {
            if(i == n-1) cout << "0\n";
            else cout << "0 ";
        }
        
        return;
    }

    for (int i = 0; i < n; i++)
    {

        if (i == 0){
            res[i] = coins_left / mins[i];
            coins_left -= (coins_left / mins[i])*mins[i];
            continue;
        }

        if (mins[i] == mins[i-1]){
            res[i] = res[i-1];
            continue;
        }

        res[i] = min(coins_left / (mins[i] - mins[i-1]), res[i-1]);

        coins_left -= min(coins_left / (mins[i] - mins[i-1]), res[i-1])*mins[i] - res[i]*mins[i-1];
    }
    
    for (int i = 0; i < n; i++)
    {
        if(i == n-1) cout << res[i] << "\n";
        else cout << res[i] << " ";
    }

    
    
    
    return;
}

int main(){


    int tt; cin >> tt;

    while (tt--) solve();

    return 0;
}