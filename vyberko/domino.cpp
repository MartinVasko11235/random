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
#define FORB(i, a, b) for(int (i) = (a); (i) < (b); (i)++)
#define RFORB(i, a, b) for(int (i) = (b) - 1; (i) >= (a); (i)--)
#define EACH(i, v) for(auto& i : v)

#define EB emplace_back
#define SZ size()
#define ff first
#define sd second

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

struct edge {
    bool is_a;
    int end, i;
    edge() {}
    edge(int end, int i, bool is_a) : end(end), i(i), is_a(is_a) {}
};

void solve(){
    int m;
    cin >> m;
    int n = 100'001;

    vec<vec<edge>> adj(n);
    vi deg(n);

    int a, b;
    FOR(i, m){
        cin >> a >> b;
        adj[a].EB(edge(b, i, false));
        adj[b].EB(edge(a, i, true));
        deg[a]++;
        deg[b]++;
    }

    if (m < 4){
        cout << "0 0\n";
        return;
    }

    int start = -1;

    FOR(i, n){
        if (deg[i] > 0){
            start = i;
        }
        if (deg[i]%2){
            cout << "0 0\n";
            return;
        }
    }

    vb used(m, false);

    vi res;

    auto dfs = [&](int v, auto &&dfs) -> void
    {
        for (auto edge : adj[v])
        {
            if (!used[edge.i])
            {
                used[edge.i] = true;
                dfs(edge.end, dfs);
            }
        }
        res.EB(v);
    };
    dfs(start, dfs);

    cout << "3 " << m - 1 << '\n';

    FOR(i, (m-1)/2){
        for (auto edge : adj[start]){
            if (edge.end == res[i]){
                cout << edge.i << (edge.is_a ? "B" : "A") << " ";
                cout << edge.i << (edge.is_a ? "A" : "B") << " ";
                start = edge.end;
            }
        }
    }

    if (!m%2) {
        for (auto edge : adj[res[m/2]]){
            if (edge.end == res[m/2+1]){
                cout << edge.i << (edge.is_a ? "B" : "A") << " ";
            }
        }
    }

    
}

int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    //cin >> _t;

    while (_t--) solve();

    return 0;
}
