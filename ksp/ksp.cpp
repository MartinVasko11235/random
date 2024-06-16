#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

template<typename T>
using indexed_tree = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

#define int long long

#define all(a) a.begin(), a.end()
#define For(i, n)  for(int (i) = 0; (i) < (n); (i)++)
#define rFor(i, n) for(int (i) = (n)-1; (i) >= 0; i--)
#define loop(i, a, b) for(int (i) = (a); (i) < (b); (i)++)
#define rloop(i, a, b) for(int (i) = (b) - 1; (i) >= (a); (i)--)
#define each(i, v) for(auto& i : v)

#define uset unordered_set
#define umap unordered_map
#define vec vector

#define ff first
#define sd second

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
    For(i, a.size()){
        if(i == a.size()-1) os << a[i];
        else os << a[i] << ' ';
    }
    return os;
}

#ifdef ASDFG
#define debug(a) cerr << #a << " = " << a << '\n';
#else
#define debug(a)
#endif

struct Solution{

    bool multiple_test_case = false;
    bool is_interactive = false;

    void solve(){

        vvi adj = {{1, 2},
                    {0},
                    {0, 3, 4},
                    {2},
                    {2}};

        vi t(5, 0);

        auto dfs = [&](int v, int p, auto& dfs)->int{

            int sum = 1;

            each(c, adj[v]){
                if (c == p) continue;

                sum += dfs(c, v, dfs);
            }

            t[v] = sum;

            return sum;
        };

        dfs(0, -1, dfs);

        each(i, t){
            cout << i << '\n';
        }
    }

};

int32_t main(){

    Solution solution;

    if (!solution.is_interactive){
        ios_base::sync_with_stdio(false);
        cin.tie(NULL);

        #ifdef ASDFG
        freopen("in.txt", "r", stdin);
        freopen("out.txt", "w", stdout);
        #endif
    }

    #ifdef ASDFG 
    freopen("log.txt", "w", stderr);
    #endif
    
    int _t = 1;

    if (solution.multiple_test_case) cin >> _t;

    while(_t--) solution.solve();

    return 0;
}
