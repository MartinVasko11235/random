#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

template<typename T>
using indexed_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

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
        int p, k, n; // p je premenovane r
        cin >> p >> k >> n;

        vi a(n);

        For(i, n){
            cin >> a[i];
        }

        vi pref(n);
        pref[0] = a[0];

        loop(i, 1, n){
            pref[i] = a[i] + pref[i-1];
        }

        auto sum = [&](int l, int r){
            if (l == 0) return pref[r];
            if (r < l) return pref[n-1] - pref[l-1] + pref[r];

            return pref[r] - pref[l-1];
        };

        int idx = 0;

        vi turn(n, -1);
        vi total_sum(n, 0);

        int curr_turn = 0;
        int curr_sum = 0;

        while(turn[idx] == -1){
            turn[idx] = curr_turn;
            int l = 0;
            int r = n-1;

            while (l <= r){
                int m = (l+r)/2;

                int sm = sum(idx, m);

                if (sm == p){
                    r = m;
                    break;
                }
                else if (sm < p){
                    l = m + 1;
                }
                else {
                    r = m - 1;
                }
            }
            curr_turn++;
            curr_sum += sum(idx, r);
            idx = r;
            total_sum[idx] = curr_sum;

            if (curr_turn == k){
                cout << curr_sum << '\n';
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
