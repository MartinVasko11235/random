
#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

int f(int a, int b, int c, int d){
    return abs(a-b) + abs(b-c) + abs(c-d) + abs(d-a);
}

void solve(){
    int n;

    cin >> n;

    vi a(n);

    for (int i = 0; i<n; i++) {
        int temp;
        cin >> temp;
        a[i] = temp;
    }


    sort(a.begin(), a.end());

    cout << f(a[0], a[n-1], a[1], a[n-2]) << endl;
}

int main(){

    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    int _t;
    cin >> _t;
    while (_t--) {
        solve();
    }
    return 0;
}