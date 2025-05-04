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

struct edge{
    int a, b, c, i;
    edge() : a(0), b(0), c(0), i(0) {}
    edge(int a, int b, int c, int i) : a(a), b(b), c(c), i(i) {}
};


struct dsu{
    vi parent;
    vi rank;

    dsu(int n){
        rank.resize(n, 0);
        parent.resize(n);
        FOR(i, n){
            parent[i] = i;
        }
    }

    int find(int a){
        return a == parent[a] ? a : parent[a] = find(parent[a]);
    }

    bool merge(int a, int b){
        a = find(a);
        b = find(b);

        if (a == b){
            return false;
        }

        if (rank[a] < rank[b])
            swap(a, b);

        parent[b] = a;
        if (rank[a] == rank[b])
            rank[a]++;

        return true;
    }
};

void solve(){
    int n, m;
    cin >> n >> m;

    vec<edge> edges(m);
    int a, b, c;
    FOR(i, m){
        cin >> a >> b >> c;
        a--;
        b--;
        edges[i] = edge(a, b, c, i);
    }

    sort(ALL(edges), [](edge a, edge b)
         { return a.c < b.c; });

    dsu ds(n);

    vec<edge> used_edges;
    int min_cost = 0;

    for (auto edge : edges){
        if (ds.merge(edge.a, edge.b)){
            min_cost += edge.c;
            used_edges.EB(edge);
        }
    }

    int res1 = 0;
    int res2 = 0;
    for (auto ban : used_edges)
    {
        dsu curr_ds(n);
        int curr_cost = 0;
        for (auto edge : edges){
            if (edge.i == ban.i) continue;
            if (curr_ds.merge(edge.a, edge.b)){
                curr_cost += edge.c;
            }
        }
        bool unconnected = false;
        FOR(i, n)
        {
            if (curr_ds.find(i) != curr_ds.find(0)){
                unconnected = true;
            }
        }

        if (curr_cost > min_cost || unconnected) {
            res1++;
            res2 += ban.c;
        }
    }

    print(res1, res2);
}

int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    //cin >> _t;

    while (_t--) solve();

    return 0;
}
