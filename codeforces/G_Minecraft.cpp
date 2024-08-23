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

const string yes = "YES";
const string no = "NO";

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

struct node{
    int value, choice, parent;
    node(int v, int c, int p) : value(v), choice(c), parent(p){};
};

void solve(){
    int n, k;
    cin >> n >> k;

    str s; cin >> s;

    vi ones(k, 0);

    FOR(i, n){
        str tmp; cin >> tmp;
        FOR(j, tmp.SZ){
            if (tmp[j] == '1') ones[j]++;
        }
    }

    vec<umap<int, node>> arr(k);

    if ((s[0] == '1' ? 1 : 0) - ones[0] >= 0){
        arr[0].insert({(s[0] == '1' ? 1 : 0) - ones[0], node((s[0] == '1' ? 1 : 0) - ones[0], 0, -1)});
    }
    if ((s[0] == '1' ? 1 : 0) - (n-ones[0]) >= 0){
        arr[0].insert({(s[0] == '1' ? 1 : 0) - (n-ones[0]), node((s[0] == '1' ? 1 : 0) - (n-ones[0]), 1, -1)});
    }

    LOOP(i, 1, k){
        EACH(j, arr[i-1]){
            int new_value_0 = j.second.value * 2 - ones[i] + (s[i] == '1' ? 1 : 0);
            if (new_value_0 <= 2*n && new_value_0 >= 0){
                arr[i].insert({new_value_0, node(new_value_0, 0, j.first)});
            }
            int new_value_1 = j.second.value * 2 - (n-ones[i]) + (s[i] == '1' ? 1 : 0);
            if (new_value_1 <= 2*n && new_value_1 >= 0){
                arr[i].insert({new_value_1, node(new_value_1, 1, j.first)});
            }
        }
    }
    
    if (arr[k-1].find(0) == arr[k-1].end()){
        cout << "-1\n";
        return;
    }

    vi res(k);

    int idx = arr[k-1][0].parent;
    res[k-1] = arr[k-1][0].choice;

    RLOOP(i, 0, k-1){
        res[i] = arr[i][idx].choice;
        idx = arr[i][idx].parent;
    }

    FOR(i, k){
        cout << res[i];
    }

    cout << '\n';
    
}


int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    cin >> _t;

    while (_t--) solve();

    return 0;
}
