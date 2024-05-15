#include <bits/stdc++.h>

using namespace std;

void solve(){
    unsigned long long n, m;
    cin >> n >> m; 

    int a = n;


    a ^= m;

    if(a < n) {
        cout << 1 << "\n";
        cout << n << " " << m << "\n";
        return;
    }

    else{
        cout << -1 << "\n";
        return;
    }
}

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    int t; cin >> t;
    while (t--)
    {
        solve();
    }
    
}