#include <bits/stdc++.h>

using namespace std;

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

#define uset unordered_set
#define umap unordered_map
#define vec vector

typedef string str;
typedef vector<int> vi;
typedef vector<vector<int>> vvi;


void solve(){
    int n; cin >> n;  
    vvi divs(n+1);

    FOR(i, n+1){
        if (i == 0) continue;

        for (int j = i; j < n + 1; j += i){
            divs[j].EB(i);
        }
    }
    long long res = 0;
    umap<int, umap<int, int>> count;
    FOR(i, n){
        int p; cin >> p;
        int idx = i + 1;
        int g = __gcd(idx, p);
        EACH(d, divs[p / g]){
            if (count.find(d) == count.end()) continue;
            res += count[d].find(idx / g) == count[d].end() ? 0 : count[d][idx / g];
        }
        EACH(d, divs[p / g]){
            if (count.find(idx / g) == count.end()){
                count.insert(MP(idx / g, umap<int, int>()));
            }
            if (count[idx / g].find(d) == count[idx / g].end()){
                count[idx / g].insert(MP(d, 0));
            }
            count[idx/g][d]++;
        } 
    }

    cout << res << '\n';    
    
    
}


int32_t main(){

    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    
    int _t = 1;

    cin >> _t;

    while (_t--) solve();

    return 0;
}
