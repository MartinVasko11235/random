//#pragma GCC optimize ("Ofast")
//#pragma GCC target ("avx2")

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
template<typename T>
using rpriorq = priority_queue<T, vec<T>, greater<T>>;

using pii = pair<int, int>;
using str = string;
using vi = vector<int>;
using vb = vector<bool>;
using vstr = vector<string>;
using vvi = vector<vector<int>>;
using vpii = vector<pii>;
using vvpii = vector<vector<pii>>;

const int mod = 1000000007;
//const int mod = 998244353;
const int inf = LONG_LONG_MAX/2;
//const int inf = INT_MAX/2;

const string yes = "YES";
const string no = "NO";

template<typename T>
ostream &operator<<(ostream &os, const vec<T> &a){
    FOR(i, a.size()){
        if (i < a.size()-1) os << a[i] << ' ';
        else os << a[i];
    }
    return os;
}

template<typename T>
void print(T t){cout << t << '\n';}
template<typename T, typename ... Args>
void print(T t, Args ... args){cout << t << ' '; print(args ...);}

#ifdef LOCAL
#define debug(a) cerr << #a << " = " << a << '\n';
#else
#define debug(a)
#endif


void solve(){
    int n; cin >> n;
    vi a(n);
    FOR(i, n-1){
        cin >> a[i];
        a[i]--;
    }

    vvi adj(n, vi());

    int x, y;

    FOR(i, n-1){
        cin >> x >> y;
        x--; y--;
        adj[x].EB(y);
        adj[y].EB(x);
    }

    vi last(n, 0);
    vi res(n, -1);

    auto dfs = [&](int v, int p, int depht, auto&& dfs) -> void{
        res[v] = depht - last[a[v]];
        int org = last[a[v]];
        last[a[v]] = depht;
        EACH(c, adj[v]){
            if (c != p){
                dfs(c, v, depht+1, dfs);
            }
        }
        last[a[v]] = org;
    };

    dfs(n-1, -1, 0, dfs);

    FOR(i, n-1){
        cout << res[i] << (i == n-2 ? '\n' : ' ');
    }

}

int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);

    freopen("io/in.txt", "r", stdin);
    freopen("io/out.txt", "w", stdout);
    
    int _t = 1;

    cin >> _t;

    while (_t--) solve();

    return 0;
}