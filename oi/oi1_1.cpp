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
const string no = "neexistuje";

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

#ifndef ONLINE_JUDGE
#define debug(a) cerr << #a << " = " << a << '\n';
#else
#define debug(a)
#endif

void solve(){

	int t, n; cin >> t >> n;

	vi res(t, -1e9);
	vi last_update(t, -1);

	vvpii rules(t);

	auto update = [&](int& time, int v, auto&& update) -> bool{
		bool ret = true;
		EACH(c, rules[v]){
			if (res[c.first] - res[v] < c.second){
				if (last_update[c.first] == time){
					return false;
				}
				res[c.first] = res[v] + c.second;
				last_update[c.first] = time;
				ret &= update(time, c.first, update);
			}
		}
		return ret;
	};

	int a, b, d;

	FOR(i, n){
		cin >> a >> b >> d;
		a--; b--;

		rules[b].EB(pii(a, d));

		if (res[b] + d > res[a]){
			res[a] = res[b] + d;
			last_update[a] = i;
			if (!update(i, a, update)){
				cout << "neexistuje\n";
				return;
			}
		}
	}

	cout << res << '\n';
	

}


int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    //cin >> _t;

    while (_t--) solve();

    return 0;
}
