#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

int bin_search(int key, vi& a){

    int l = 0, r = a.size() - 1;

    while (l <= r){
        int m = (l+r) / 2;

        if (a[m] == key){
            return m;
        }

        else if (a[m] > key){
            r = m-1;
        }

        else {
            l = m+1;
        }
    }

    return r;
}

void solve(){
    int k, q;
    cin >> k >> q;

    vi a(k);

    for(int i = 0; i < k; i++) cin >> a[i];


    for (int i = 0; i < q; i++){
        int n; cin >> n;

        while (true){

            int remove = bin_search(n, a) + 1;

            if (remove <= 0) break;

            n -= remove;

        }

        cout << n << (i == q-1 ? '\n' : ' ');
        
    }

}

int main(){

    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    int tt; cin >> tt;

    while (tt--) solve();

    return 0;
}