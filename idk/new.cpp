/// solve           :84
/// ios_base...     :90
/// cin >> _t       :94
/// mod 998'244'353 :55
/// int inf         :57
/// int long long   :21

//#pragma GCC optimize ("Ofast")
//#pragma GCC target ("avx2")

#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>
#include <queue>

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
#define EB emplace_back
#define SZ size()

template<typename T>
using uset = unordered_set<T>;
template<typename T, typename U>
using umap = unordered_map<T, U>;
template<typename T>
using vec = vector<T>;
template<typename T>
using priorq = priority_queue<T>;

using str = string;
using vi = vector<int>;
using vb = vector<bool>;
using pii = pair<int, int>;
using vstr = vector<string>;
using vvi = vector<vector<int>>;
using vpii = vector<pair<int, int>>;
using vvpii = vector<vector<pair<int, int>>>;

const int mod = 1'000'000'007;
//const int mod = 998'244'353;
const int inf = LONG_LONG_MAX/2;
//const int inf = INT_MAX/2;

const string yes = "YES\n";
const string no = "NO\n";

template<typename T>
void print(T t){cout << t << '\n';}
template<typename T, typename ... Args>
void print(T t, Args ... args){cout << t << ' '; print(args ...);}

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
    int n, m; cin >> n >> m;

    if (n*m == 1) {
        int x; cin >> x;
        cout << -1 << '\n';
        return;
    }

    FOR(i, n){      
        vi res(m);
        FOR(j, m){
            int x; cin >> x;
            res[j] = x == n*m ? 1 : x + 1;
            
        }
        cout << res << '\n';
    }       
}


int32_t main(){
    ios_base::sync_with_stdio(false); cin.tie(NULL);
    
    int _t = 1;

    cin >> _t;

    while (_t--) solve();

    return 0;
}
