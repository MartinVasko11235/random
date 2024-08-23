/// solve           :84
/// ios_base...     :90
/// cin >> _t       :94
/// mod 998'244'353 :55
/// int inf         :57
/// int long long   :21

//#pragma GCC optimize ("Ofast")
//#pragma GCC target ("avx2")

#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>
#include <queue>

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

#define F first
#define S second
#define MP make_pair
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

using str = string;
using vi = vector<int>;
using vb = vector<bool>;
using pii = pair<int, int>;
using vstr = vector<string>;
using vvi = vector<vector<int>>;
using vpii = vector<pair<int, int>>;
using vvpii = vector<vector<pair<int, int>>>;

const int mod = 1'000'000'007;
//const int mod = 998'244'353;
const int inf = LONG_LONG_MAX/2;
//const int inf = INT_MAX/2;

const string yes = "YES\n";
const string no = "NO\n";

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

struct dsu{
	vi parent;
	vi rank;

	dsu(int n){
		parent.resize(n, 0);
		rank.resize(n, 0);

		FOR(i, n){
			parent[i] = i;
		}
	}

	int find(int a){
		if (a == parent[a]) return a;
		return parent[a] = find(parent[a]);
	}

	void merge(int a, int b){
		int ra = find(a);
		int rb = find(b);

		if (ra == rb) return;

		if (rank[ra] > rank[rb]) swap(ra, rb);

		parent[ra] = rb;

		if (rank[ra] == rank[rb]) rank[rb]++;
	}
};

void solve(){
    int n; cin >> n;

    vi a(n);
    FOR(i, n) cin >> a[i];

	dsu dsu(n);

	vpii res(n-1);
	
	RLOOP(i, 1, n){
		vi mods(i, -1);
		FOR(j, n){
			int md = a[j] % i;
			if (mods[md] == -1){
				mods[md] = j;
				continue;
			}

			if (dsu.find(mods[md]) == dsu.find(j)) continue;

			dsu.merge(j, mods[md]);
			res[i] = {j, mods[md]};
			break;
		}
	}

    
	print("Yes");
	
	FOR(i, n-1){
		print(res[i].F, res[i].S);
	}
    
}


int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(NULL);
    
    int _t = 1;

    cin >> _t;

    while (_t--) solve();

    return 0;
}
