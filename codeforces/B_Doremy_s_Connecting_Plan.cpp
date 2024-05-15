#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<ll, ll> pll;

typedef vector<int> vi;


void solve(){
    ll n, c;

    cin >> n >> c;

    ll k;
    cin >> k;

    vector<pll> a(n-1);

    for (ll i = 1; i < n; i++)
    {
        ll temp;
        cin >> temp;

        ll mul_temp = (i+1)*c - temp;

        a[i-1] = make_pair(temp, mul_temp);

    }

    sort(a.begin(), a.end(), [](pll a, pll b){return a.second < b.second;});

    for (ll i = 0; i < a.size(); i++)
    {
        if(k >= a[i].second){
            k += a[i].first;
        }
        else{
            cout << "No" << "\n";
            return;
        }
    }
    
    cout << "Yes" << "\n";
    
}

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    int _t;

    cin >> _t;

    while (_t--) solve();
}