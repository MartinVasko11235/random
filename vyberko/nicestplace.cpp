// #pragma GCC optimize ("Ofast")
// #pragma GCC target ("avx2")

#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

template<typename T>
using ordered_set = tree<T, null_type, greater<T>, rb_tree_tag, tree_order_statistics_node_update>;

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
    int a, b, c;
    edge(int a, int b, int c) : a(a), b(b), c(c) {}
};

struct quest {
    int p, d, k, i;
    quest(int a, int b, int c, int i) : p(a), d(b), k(c), i(i) {}
};

struct place {
    int v, i;
    place(int v, int i) : v(v), i(i) {}
    bool operator>(const place& oth) const {
        if (v == oth.v)
            return i > oth.i;
        return v > oth.v;
    }
};

struct dsu
{
    vi parent;
    vec<ordered_set<place>> places;

    dsu(vi beauty){
        parent.resize(beauty.size());
        places.resize(beauty.size()), ordered_set<place>();
        FOR(i, beauty.size()){
            parent[i] = i;
            places[i].insert(place(beauty[i], i));
        }
    }

    int find(int a){
        return a == parent[a] ? a : parent[a] = find(parent[a]);
    }

    void merge(int a, int b){
        a = find(a);
        b = find(b);

        if (a == b)
            return;

        if (places[a].size() < places[b].size())
            swap(a, b);

        for (place x : places[b]){
            places[a].insert(x);
        }

        parent[b] = a;
    }

    int find_kth(int a, int k){
        if (a == parent[a]){
            return places[a].size() < k ? -1 : (*places[a].find_by_order(k - 1)).v;
        }
        return find_kth(parent[a], k);
    }
};

void solve(){
    int n, m, q;
    cin >> n >> m >> q;

    vi beauty(n);

    FOR(i, n){
        cin >> beauty[i];
    }

    vec<edge> edges(m, edge(0, 0, 0));

    FOR(i, m){
        int a, b, c;
        cin >> a >> b >> c;
        a--;
        b--;
        edges[i] = edge(a, b, c);
    }

    sort(ALL(edges), [](edge a, edge b)
         { return a.c < b.c; });

    vec<quest> quests(q, quest(0, 0, 0, 0));
    FOR(i, q)
    {
        int p, d, k;
        cin >> p >> d >> k;
        p--;
        quests[i] = quest(p, d, k, i);
    }

    sort(ALL(quests), [](quest a, quest b)
         { return a.d < b.d; });

    vi res(q);

    dsu ds(beauty);
    int idx = 0;

    FOR(i, q){
        while (idx < edges.size() ? edges[idx].c <= quests[i].d : false){
            ds.merge(edges[idx].a, edges[idx].b);
            idx++;
        }

        res[quests[i].i] = ds.find_kth(quests[i].p, quests[i].k);
    }

    FOR(i, q){
        cout << res[i] << '\n';
    }
}

int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    //cin >> _t;

    while (_t--) solve();

    return 0;
}
