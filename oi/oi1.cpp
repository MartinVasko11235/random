
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
    pii(){};
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

// #ifndef ONLINE_JUDGE
// #define debug(a) cerr << #a << " = " << a << '\n';
// #else
// #define debug(a)
// #endif

void solve(){
	int t, n; cin >> t >> n;

	vvpii events(t);
	vi in(t, 0);

	FOR(i, n){
		int a, b, d;
		cin >> a >> b >> d;
		a--; b--;

		if (d < 0){
			swap(a, b);
			d *= -1;
		}

		events[b].EB(pii(a, d));

		in[a]++;
		
	}


	int min_val = -1'000'000'000;

	vi res(t, min_val - 1);
	vi latest(t, -min_val + 1);

	queue<pii> q;

	FOR(i, t){
		if (in[i] == 0){
			q.push(pii(i, min_val));
			res[i] = min_val;
			latest[i] = min_val;
		}
	}	

	if (q.empty()){
		print("neexistuje");
		return;
	}

	vb visited(t, false);
	

	while (q.empty()){
		pii curr = q.front();
		q.pop();

		if (curr.y > latest[curr.x]){
			print("neexistuje");
			return;
		}

		res[curr.x] = max(curr.y, res[curr.x]);
		if (res[curr.x] > 1'000'000'000){
			print("neexistuje");
			return;
		}
		in[curr.x]--;
		
		if (in[curr.x] == 0){
			EACH(i, events[curr.x]){
				q.push(pii(i.x, res[curr.x]+i.y));
			}
			latest[curr.x] = res[curr.x];
		}
	}

	print(res);
	
	    
}


int32_t main(){

    ios_base::sync_with_stdio(false); cin.tie(nullptr);
    
    int _t = 1;

    // cin >> _t;

    while (_t--) solve();

    return 0;
}
