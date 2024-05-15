#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<unsigned int> vi;

void solve(){

    int n; cin >> n;

    vi a(n);

    for(int i = 0; i < n; i++) cin >> a[i];

    vi pref_xor(n+1);

    pref_xor[0] = 0;

    for(int i = 0; i < n; i++){
        pref_xor[i] = pref_xor[i-1] ^ a[i];
    }

    vector<vi> sums(30);

    for(int i = 0; i < 30; i++){

        int sum = 0;

        for(int j = 0; j < n+1; j++){
            if (pref_xor[j] & (1 << i)){
                sum++;
            }

            sums[i][j] = sum;
        }
    }

    int res = 0;

    for(int i = 0; i < n; i++){
        int pos = 32 - __builtin_clz(a[i]);

        res += sums[pos][i]*(sums[pos][n-1] - sums[pos][i]) + (i - sums[pos][i])*( n - i - sums[pos][n-1] + sums[pos][i]);
    }

    cout << res << '\n';

    
}

int main(){

    int tt; cin >> tt;

    while (tt--) solve();

    return 0;
}