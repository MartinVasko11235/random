#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

template<typename T>
using ordered_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

#define int long long

#define ALL(a) a.begin(), a.end()
#define FOR(i, n)  for(int (i) = 0; (i) < (n); (i)++)
#define RFOR(i, n) for(int (i) = (n)-1; (i) >= 0; i--)
#define LOOP(i, a, b) for(int (i) = (a); (i) < (b); (i)++)
#define RLOOP(i, a, b) for(int (i) = (b) - 1; (i) >= (a); (i)--)
#define EACH(i, v) for(auto& i : v)

#define F first
#define S second
#define MP make_pair
#define PB push_back
#define EB emplace_back

#define uset unordered_set
#define umap unordered_map
#define vec vector

typedef string str;
typedef vector<int> vi;
typedef vector<bool> vb;
typedef pair<int, int> pii;
typedef vector<string> vstr;
typedef vector<vector<int>> vvi;
typedef vector<pair<int, int>> vpii;
typedef vector<vector<pair<int, int>>> vvpii;

const int mod = 1'000'000'007;
const int inf = LONG_LONG_MAX/2;

const string yes = "YES\n";
const string no = "NO\n";

template<typename T>
ostream &operator<<(ostream &os, const vec<T> &a){
    FOR(i, a.size()){
        if (i < a.size()-1) os << a[i] << ' ';
        else os << a[i];
    }
    return os;
}

#ifndef ONLINE_JUDGE
#define debug(a) cerr << #a << " = " << a << '\n';
#else
#define debug(a)
#endif

void solve(){
    int n, x;
    cin >> n >> x;

    vi div;

    FOR(i, x+1){
        if (i == 0) continue;
        if (x % i == 0){
            div.EB(i);
        }
    }

    vb found(div.size(), false);

    int res = 1;
    
    FOR(i, n){
        int a; cin >> a;
        if (a == 1) continue;
        if (x % a != 0) continue;

        int to_check = x / a;

        FOR(j, div.size()){
            
            if (div[j] == to_check && found[j]){
                res++;
                found.assign(div.size(), false);
                break;
            }

        }        

        uset<int> to_add;
        to_add.insert(a);
        FOR(j, div.size()){
            if (found[j]){
                to_add.insert(div[j]*a);
            }
            if (to_add.find(div[j]) != to_add.end()){
                found[j] = true;
            }
        }        
        
    }        

    cout << res << '\n';

}


int32_t main(){

    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    
    int _t = 1;

    cin >> _t;

    while (_t--) solve();

    return 0;
}
