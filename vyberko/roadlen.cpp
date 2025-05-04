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

struct segment_tree_min{

    vector<int> t;

    int n;

    int neutral_value = inf; //moze to byt treba zmenit (napr. pri nasobeni to treba zmenit na 1)

    int __operator(int a, int b){
        // asociativna operacia intervalacu ktoru treba implementovat
        // napr. :
        // return a + b;
        // return max(a, b);
        return min(a, b);
    }

    void __build(vector<int> &a, int v, int tl, int tr){
        if (tl == tr){
            t[v] = a[tl];
            return;
        }

        int tm = (tl + tr)/2;

        __build(a, v<<1, tl, tm);
        __build(a, (v<<1)|1, tm+1, tr);

        t[v] = __operator(t[v<<1], t[(v<<1)|1]);
    }


    void __update(int v, int tl, int tr, int pos, int val){
        if (tl == tr){
            t[v] = val;
            return;
        }

        int tm = (tl + tr)/2;

        if (pos <= tm){
            __update(v<<1, tl, tm, pos, val);
        }
        else{
            __update((v<<1)|1, tm+1, tr, pos, val);
        }

        t[v] = __operator(t[v<<1], t[(v<<1)|1]);
    }

    int __get(int v, int tl, int tr, int l, int r){

        if (l>r){
            return neutral_value;
        }

        if (tl == l && tr == r){
            return t[v];
        }

        int tm = (tl + tr)/2;

        return __operator(__get(v<<1, tl, tm, l, min(r, tm)), __get((v<<1)|1, tm+1, tr, max(l, tm+1), r));
    }

    segment_tree_min(int n){
        this->n = n;
        t.resize(4 * n, neutral_value);
    }

    segment_tree_min(vector<int> a){
        n = a.size();
        t.resize(4*n);
        __build(a, 1, 0, n-1);
    }

    void update(int pos, int val){
        __update(1, 0, n-1, pos, val);
    }

    int get(int l, int r){
        return __get(1, 0, n-1, l, r);
    }

};

struct segment_tree_max{

    vector<int> t;

    int n;

    int neutral_value = 0; //moze to byt treba zmenit (napr. pri nasobeni to treba zmenit na 1)

    int __operator(int a, int b){
        // asociativna operacia intervalacu ktoru treba implementovat
        // napr. :
        // return a + b;
        return max(a, b);
        // return min(a, b);
    }

    void __build(vector<int> &a, int v, int tl, int tr){
        if (tl == tr){
            t[v] = a[tl];
            return;
        }

        int tm = (tl + tr)/2;

        __build(a, v<<1, tl, tm);
        __build(a, (v<<1)|1, tm+1, tr);

        t[v] = __operator(t[v<<1], t[(v<<1)|1]);
    }


    void __update(int v, int tl, int tr, int pos, int val){
        if (tl == tr){
            t[v] = val;
            return;
        }

        int tm = (tl + tr)/2;

        if (pos <= tm){
            __update(v<<1, tl, tm, pos, val);
        }
        else{
            __update((v<<1)|1, tm+1, tr, pos, val);
        }

        t[v] = __operator(t[v<<1], t[(v<<1)|1]);
    }

    int __get(int v, int tl, int tr, int l, int r){

        if (l>r){
            return neutral_value;
        }

        if (tl == l && tr == r){
            return t[v];
        }

        int tm = (tl + tr)/2;

        return __operator(__get(v<<1, tl, tm, l, min(r, tm)), __get((v<<1)|1, tm+1, tr, max(l, tm+1), r));
    }

    segment_tree_max(int n){
        this->n = n;
        t.resize(4*n, neutral_value);
    }

    segment_tree_max(vector<int> a){
        n = a.size();
        t.resize(4*n);
        __build(a, 1, 0, n-1);
    }

    void update(int pos, int val){
        __update(1, 0, n-1, pos, val);
    }

    int get(int l, int r){
        return __get(1, 0, n-1, l, r);
    }

};

vector<int> parent, depth, heavy, head, pos;
int cur_pos;

int dfs(int v, vector<vector<int>> const& adj) {
    int size = 1;
    int max_c_size = 0;
    for (int c : adj[v]) {
        if (c != parent[v]) {
            parent[c] = v, depth[c] = depth[v] + 1;
            int c_size = dfs(c, adj);
            size += c_size;
            if (c_size > max_c_size)
                max_c_size = c_size, heavy[v] = c;
        }
    }
    return size;
}

void decompose(int v, int h, vector<vector<int>> const& adj) {
    head[v] = h, pos[v] = cur_pos++;
    if (heavy[v] != -1)
        decompose(heavy[v], h, adj);
    for (int c : adj[v]) {
        if (c != parent[v] && c != heavy[v])
            decompose(c, c, adj);
    }
}

void init(vector<vector<int>> const& adj) {
    int n = adj.size();
    parent = vector<int>(n);
    depth = vector<int>(n);
    heavy = vector<int>(n, -1);
    head = vector<int>(n);
    pos = vector<int>(n);
    cur_pos = 0;

    dfs(0, adj);
    decompose(0, 0, adj);
}

int query_max(int a, int b, segment_tree_max& smax) {
    int res = 0;
    for (; head[a] != head[b]; b = parent[head[b]]) {
        if (depth[head[a]] > depth[head[b]])
            swap(a, b);
        int cur_heavy_path_max = smax.get(pos[head[b]], pos[b]);
        res = max(res, cur_heavy_path_max);
    }
    if (depth[a] > depth[b])
        swap(a, b);
    int last_heavy_path_max = smax.get(pos[a], pos[b]);
    res = max(res, last_heavy_path_max);
    return res;
}

int query_min(int a, int b, segment_tree_min& smin) {
    int res = inf;
    for (; head[a] != head[b]; b = parent[head[b]]) {
        if (depth[head[a]] > depth[head[b]])
            swap(a, b);
        int cur_heavy_path_max = smin.get(pos[head[b]], pos[b]);
        res = min(res, cur_heavy_path_max);
    }
    if (depth[a] > depth[b])
        swap(a, b);
    int last_heavy_path_max = smin.get(pos[a], pos[b]);
    res = min(res, last_heavy_path_max);
    return res;
}

void solve(){
    int n;
    cin >> n;

    vvi adj(n);

    int a, b, c;
    int idx = n;
    vi cost;

    FOR(i, n - 1)
    {
        cin >> a >> b >> c;
        a--;
        b--;
        adj[a].EB(idx);
        adj[b].EB(idx);
        vi tmp = {a, b};
        adj.EB(tmp);
        cost.EB(c);
        idx++;
    }

    init(adj);

    segment_tree_max smax(idx);
    segment_tree_min smin(idx);

    FORB(i, n, idx){
        smax.update(pos[i], cost[i - n]);
        smin.update(pos[i], cost[i - n]);
    }

    int k;
    cin >> k;

    FOR(i, k){
        cin >> a >> b;
        a--;
        b--;
        print(query_min(a, b, smin), query_max(a, b, smax));
    }
}

int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    //cin >> _t;

    while (_t--) solve();

    return 0;
}
