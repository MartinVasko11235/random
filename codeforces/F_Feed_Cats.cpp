#include <bits/stdc++.h>

using namespace std;


#define all(a) a.begin(), a.end()
#define rep(n) for(int i = 0; i < (n); i++)
#define repi(i, n)  for(int (i) = 0; (i) < (n); (i)++)
#define loop(i, a, b) for(int (i) = (a); (i) < (b); (i)++)
#define rloop(i, a, b) for(int (i) = (b) - 1; (i) >= (a); (i)--)
#define each(i, v) for(auto& i : v)

#define uset unordered_set
#define umap unordered_map

typedef string str;
typedef long long ll;
typedef vector<int> vi;
typedef vector<bool> vb;
typedef unsigned int uint;
typedef pair<int, int> pii;
typedef vector<string> vstr;
typedef vector<long long> vll;
typedef unsigned long long ull;
typedef vector<vector<int>> vvi;
typedef vector<pair<int, int>> vpii;
typedef vector<vector<long long>> vvll;
typedef pair<long long, long long> pll;
typedef vector<vector<pair<int, int>>> vvpii;
typedef vector<pair<long long, long long>> vpll;
typedef vector<vector<pair<long long, long long>>> vvpll;

const int mod = 1'000'000'007;

const string yes = "Yes";
const string no = "No";

void __print(int x) {cerr << x;}
void __print(long x) {cerr << x;}
void __print(long long x) {cerr << x;}
void __print(unsigned x) {cerr << x;}
void __print(unsigned long x) {cerr << x;}
void __print(unsigned long long x) {cerr << x;}
void __print(float x) {cerr << x;}
void __print(double x) {cerr << x;}
void __print(long double x) {cerr << x;}
void __print(char x) {cerr << '\'' << x << '\'';}
void __print(const char *x) {cerr << '\"' << x << '\"';}
void __print(const string &x) {cerr << '\"' << x << '\"';}
void __print(bool x) {cerr << (x ? "true" : "false");}

template<typename T, typename V>
void __print(const pair<T, V> &x) {cerr << '{'; __print(x.first); cerr << ','; __print(x.second); cerr << '}';}
template<typename T>
void __print(const T &x) {int f = 0; cerr << '{'; for (auto &i: x) cerr << (f++ ? "," : ""), __print(i); cerr << "}";}
void _print() {cerr << "]\n";}
template <typename T, typename... V>
void _print(T t, V... v) {__print(t); if (sizeof...(v)) cerr << ", "; _print(v...);}
#ifndef ONLINE_JUDGE
#define debug(x...) cerr << "[" << #x << "] = ["; _print(x)
#else
#define debug(x...)
#endif

inline void fill_vec(vi& a, int n){
    if (a.size() != n) a.resize(n);
    rep(n){
        cin >> a[i];
    }
}

inline void fill_adj(vvi&adj, int n, int m){
    if (adj.size() != n) adj.resize(n);
    rep(m){
        int u, v;
        cin >> u >> v;
        adj[u].emplace_back(v);
        adj[v].emplace_back(u);
    }
}

struct cat{
    int time;
    bool is_start;
    int l, r;

    cat (int time, bool is_start, int l, int r) : time(time), is_start(is_start), l(l), r(r){};

    bool operator<(cat oth){
        if (time == oth.time){
            return is_start > oth.is_start;
        }
        return time < oth.time;
    }
};

void solve(){
    int n, m;
    cin >> n >> m;

    vector<cat> cats;

    for(int i = 0; i < m; i++){
        int l, r;
        cin >> r >> r;
        cats.emplace_back(cat(l, true, l, r));
        cats.emplace_back(cat(r, false, l, r));
    }

    sort(all(cats));

    vi dp(n, -1);

    vi pref_max(n, -1);


    multiset<int> starts;

    int idx = 0;

    for (int time = 0; time < n; time++)
    {
        while (cats[idx].time <= time){
            if (cats[idx].is_start){
                starts.insert(cats[idx].time);
            }
            else{
                starts.erase(starts.find(cats[idx].l));
            }
        }

        if (starts.empty()) continue;

        dp[time] = (*starts.begin())-1 >= 0 ? pref_max[(*starts.begin())-1] + starts.size() : starts.size();
        pref_max[time] = time == 0 ? dp[0] : max(pref_max[time-1], dp[time]);
    }
    


}

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    #ifndef ONLINE_JUDGE
    freopen("in.txt", "r", stdin);
    freopen("out.txt", "w", stdout);
    freopen("err.txt", "w", stderr);
    #endif

    int _t = 1; 
    cin >> _t;

    while(_t--) solve();

    return 0;
}