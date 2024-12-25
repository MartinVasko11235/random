
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

void solve(){
	str s;
	cin >> s;

	int n, k; cin >> n >> k;

	vstr abc(26);

	FOR(i, 26){
		cin >> abc[i];
		if (abc[i] == "#") abc[i] = "";
	}


	abc.EB(s);

	vvi len(n+1, vi(26, 0));

	FOR(i, 26) {
		len[0][i] = 1;
	}

	LOOP(i, 1, n+1){
		FOR(j, 26){
			EACH(c, abc[j]){
				len[i][j] += len[i-1][c - 'a'];
			}
		}
	}

	int depht = n;

	int i = 0;

	int abc_i = 26;

	int pos = 1;

	while(true){

		if (depht == 0 && pos == k){
			print(abc[abc_i][i]);
			return;
		}

		if (abc[abc_i].size() <= i){
			print("Neexistuje");
			return;
		}

		if (pos + len[depht][abc[abc_i][i] - 'a'] <= k){
			pos += len[depht][abc[abc_i][i] - 'a'];
			i++;
		}
		else {
			// if (depht == 0) {
			// 	pos++;
			// 	continue;
			// }
			depht--;
			abc_i = abc[abc_i][i] - 'a';
			i = 0;
		}
	}
}


int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    //cin >> _t;

    while (_t--) solve();

    return 0;
}
