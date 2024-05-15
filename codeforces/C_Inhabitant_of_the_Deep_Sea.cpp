#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

void solve(){

    int n, k;
    cin >> n >> k;

    vi a(n);

    for(int i = 0; i < n; i++) cin >> a[i];

    int l = 0, r = n-1;

    bool first = true;

    while (l<=r){
        int dmg = min(a[l], a[r]);

        if (k < 2*dmg){
            if (k%2 == 0){
                a[l] -= k/2;
                a[r] -= k/2;
            }
            else{
                a[l] -= k/2;
                a[r] -= k/2;

                if (first) a[l] -= 1;
                else a[r] -= 1;
            }

            break;
        }

        
        k -= 2*dmg;
        a[l] -= dmg;
        if(l != r) a[r] -= dmg;

        first = !first;

        if (a[l] == 0) l++;

        if (a[r] == 0) r--;
        
        if (k == 0) break;
        
    }


    int res = 0;

    for (int i = 0; i < n; i++)
    {
        if (a[i] < 1) res++;
    }

    cout << res << '\n';
    
}

int main(){

    int tt; cin >> tt;

    while (tt--) solve();

    return 0;
}