#include <bits/stdc++.h>

using namespace std;

typedef vector<int> vi;

typedef long long ll;

#ifndef ONLINE_JUDGE
#define dbg(x) cerr << #x << " = " << x << '\n';
#else
#define dbg(x)
#endif


int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    #ifndef ONLINE_JUDGE
    freopen("in.txt", "r", stdin);
    freopen("out.txt", "w", stdout);
    freopen("err.txt", "w", stderr);
    #endif

    int n; cin >> n;

    vi a(n);

    for (int i = 0; i < n; i++){
        cin >> a[i];
    }

    int sum = 0;

    for(auto& i : a){
        dbg(i);
        sum += i;
    }

    cout << sum << '\n';

    return 0;
}