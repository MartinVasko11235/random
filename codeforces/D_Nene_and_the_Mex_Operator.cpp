#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

template<typename T>
using indexed_tree = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

#define all(a) a.begin(), a.end()
#define For(i, n)  for(int (i) = 0; (i) < (n); (i)++)
#define rfor(i, n) for(int (i) = (n)-1; (i) >= 0; i--)
#define loop(i, a, b) for(int (i) = (a); (i) < (b); (i)++)
#define rloop(i, a, b) for(int (i) = (b) - 1; (i) >= (a); (i)--)
#define each(i, v) for(auto& i : v)

#define uset unordered_set
#define umap unordered_map
#define vec vector

#define int long long

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

const string yes = "Yes";
const string no = "No";

void __print(int x) {cerr << x;}
void __print(long x) {cerr << x;}
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
void __print(const pair<T, V> &x) {cerr << '{'; __print(x.first); cerr << ", "; __print(x.second); cerr << '}';}
template<typename T>
void __print(const T &x) {int f = 0; cerr << '{'; for (auto &i: x) cerr << (f++ ? ", " : ""), __print(i); cerr << "}";}
void _print() {cerr << "]\n";}
template <typename T, typename... V>
void _print(T t, V... v) {__print(t); if (sizeof...(v)) cerr << ", "; _print(v...);}

#ifdef ASDFG
#define debug(x...) cerr << "[" << #x << "] = ["; _print(x)
#else
#define debug(x...)
#endif


struct Solution{

    bool multiple_test_case = false;
    bool is_interactive = false;

    void solve(){
        int n; cin >> n;

        vi a(n);

        For(i, n){
            cin >> a[i];

        }

        int best_mask = 0;
        int best_sum = 0;

        for(int mask = 0; mask < 1 << (n+1); mask++){
            int last_set = -1;
            int curr_sum = 0;

            For(i, n){
                if (mask & (1 << i)){
                    curr_sum += a[i] + (i - last_set - 1)*(i - last_set - 1);
                    last_set = i;
                }
            }

            if (last_set != n-1) curr_sum += (n-1 - last_set - 1)*(n-1 - last_set - 1);

            if (curr_sum > best_sum){
                best_mask = mask;
                best_sum = curr_sum;
            }
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