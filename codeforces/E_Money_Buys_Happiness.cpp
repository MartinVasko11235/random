#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

template<typename T>
using indexed_tree = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

#define all(a) a.begin(), a.end()
#define For(i, n)  for(int (i) = 0; (i) < (n); (i)++)
#define rFor(i, n) for(int (i) = (n)-1; (i) >= 0; i--)
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

    bool multiple_test_case = true;
    bool is_interactive = false;

    void solve(){
        int m, x;
        cin >> m >> x;

        vi dp(1002*m, inf);

        dp[0] = 0;

        int sum = 0;

        For(i, m){
            int c, h;
            cin >> c >> h;

            rloop(i, h, dp.size()){
                if (dp[i - h] + c <= sum){
                    dp[i] = min(dp[i], dp[i-h] + c);
                }
            }
            sum += x;
        }

        rFor(i, dp.size()){
            if (dp[i] != inf){
                cout << i << '\n';
                return;
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