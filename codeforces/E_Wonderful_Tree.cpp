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

struct pii{
    int x, y;
    pii(int x, int y) : x(x), y(y) {};
    auto operator<=>(const pii&) const = default;       
};

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

using str = string;
using vi = vector<int>;
using vb = vector<bool>;
using vstr = vector<string>;
using vvi = vector<vector<int>>;
using vpii = vector<pii>;
using vvpii = vector<vector<pii>>;

constexpr int mod = 1'000'000'007;
//constexpr int mod = 998'244'353;
constexpr int inf = LONG_LONG_MAX/2;
//constexpr int inf = INT_MAX/2;

constexpr string yes = "YES";
constexpr string no = "NO";

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
    int n; cin >> n;

    vi a(n);

    FOR(i, n) cin >> a[i];

    vvi adj(n);
    vi parent(n);

    LOOP(i, 1, n){
        int x; cin >> x;
        parent[i] = x;
        adj[x].EB(i);
    }

    vi depht(n);
    depht[0] = 0;

    auto dfs1 = [&](int v, int p, auto &&dfs) -> void{
        if (p != -1) depht[v] = depht[p] + 1;

        EACH(i, adj[v]){
            dfs(i, v, dfs);
        }
    };
    
    dfs1(0, -1, dfs1);

    vec<rpriorq<pii>> vpq(n);

    int res = 0;

    auto dfs2 = [&](int v, auto &&dfs) -> void{
        EACH(i, adj[v]){
            dfs(i, dfs);
        }
        if (adj[v].SZ == 0) {
            vpq[v].push({depht[v], inf});
        } 
        else {
            int sm = 0;
            EACH(i, adj[v]){
                sm += a[i];
                while(!vpq[i].empty()){
                    vpq[v].push(vpq[i].top());
                    vpq[i].pop();
                }
            }
            if (sm < a[v]){
                vpq[v].push({depht[v], a[v] - sm});
            }
            while (sm > a[v]){
                int to_add = min(sm - a[v], vpq[v].top().y);
                res += to_add * (vpq[v].top().x - depht[v] - 1);
                a[v] += to_add;
                if (vpq[v].top().y == 0){
                    vpq[v].pop();
                }
            }
        }
    };

    dfs2(0, dfs2);

    print(res);
}


int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(NULL);
    
    int _t = 1;

    cin >> _t;

    while (_t--) solve();

    return 0;
}
