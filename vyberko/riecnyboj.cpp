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

// void printoset(ordered_set<int> oset){
//     FOR(i, oset.size()){
//         cout << *oset.find_by_order(i) << ' ';
//     }
//     cout << '\n';
// }

void solve(){
    int n;
    cin >> n;
    int res = 0;
    int curr = 0;
    ordered_set<int> borders;
    borders.insert(0);
    auto get = [](int x)
    { return x * (x - 1) / 2; };
    int x;
    FOR(i, n)
    {
        cin >> x;
        res += get(x);
        curr += x;
        borders.insert(curr);
    }
    print(res);
    int k;
    cin >> k;
    int type, idx;
    // printoset(borders);
    FOR(i, k)
    {
        cin >> type >> idx;
        if (type == 1)
        {
            if (idx == 1){
                int x0 = *borders.find_by_order(1);
                int x1 = *borders.find_by_order(2);
                res -= get(x0) + get(x1 - x0);
                res += get(x1);
                borders.erase(x0);
            }
            else if (idx == borders.size() - 1){
                int x0 = *borders.find_by_order(borders.size() - 2);
                int x1 = *borders.find_by_order(borders.size() - 1);
                int x00 = *borders.find_by_order(borders.size() - 3);
                res -= get(x0 - x00) + get(x1 - x0);
                res += get(x1 - x00);
                borders.erase(x0);
            }
            else {
                int x00 = *borders.find_by_order(idx - 2);
                int x0 = *borders.find_by_order(idx - 1);
                int x1 = *borders.find_by_order(idx);
                int x2 = *borders.find_by_order(idx + 1);
                int mid = (x0 + x1) / 2;
                res -= get(x0 - x00) + get(x1 - x0) + get(x2 - x1);
                res += get(mid - x00) + get(x2 - mid);
                borders.erase(x0);
                borders.erase(x1);
                borders.insert(mid);
            }
        }
        else {
            int x0 = *borders.find_by_order(idx - 1);
            int x1 = *borders.find_by_order(idx);
            int mid = (x0 + x1) / 2;
            res -= get(x1 - x0);
            res += get(mid - x0) + get(x1 - mid);
            borders.insert(mid);
        }
        print(res);
        // printoset(borders);
    }
}
int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    //cin >> _t;

    while (_t--) solve();

    return 0;
}
