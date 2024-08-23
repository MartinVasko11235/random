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
    int n, m; cin >> n >> m;
    vi a(n), b(n), c(m);
    int max_a = 0;
    FOR(i, n){
        cin >> a[i];
        max_a = max(max_a, a[i]);
    }
    FOR(i, n) cin >> b[i];
    FOR(i, m) cin >> c[i];
    vi best(max_a + 1, inf);
    FOR(i, n){
        best[a[i]] = min(best[a[i]], a[i] - b[i]);
    }

    FOR(i, max_a + 1){
        if (i == 0) continue;
        best[i] = min(best[i], best[i-1]);
    }

    vi ans(max_a + 1, 0);

    FOR(i, max_a + 1){
        if (i - best[i] < 0) continue;
        ans[i] = 2 + ans[i-best[i]];
    }
    int res = 0;

    FOR(i, m){
        int k = c[i] > max_a ? (c[i] - max_a + best[max_a] - 1) / best[max_a] : 0;
        res += 2*k + ans[c[i] - k*best[max_a]];
    }
    
    
    cout << res << '\n';

        
}


int32_t main(){

    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    
    int _t = 1;

    // cin >> _t;

    while (_t--) solve();

    return 0;
}
