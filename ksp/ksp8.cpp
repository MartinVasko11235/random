#include <bits/stdc++.h>

using namespace std;

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


struct cmp{
    bool operator()(pii a, pii b) const{
        return a.ff > b.ff;
    }
};


int32_t main(){

    cin.tie(0)->sync_with_stdio(0);

    int n, m;
    cin >> n >> m;

    vpii robotnici(n);
    vi prichod(n, 0);

    For(i, n){
        int a, b;
        cin >> a >> b;
        robotnici[i] = {a, b};
    }

    vvi small;

    int sq = sqrt(m);

    //sq = m;

    For(i, sq+1){
        small.push_back(vi(i, 0));
    }

    priority_queue<pii, vpii, cmp> aktivny;
    priority_queue<pii, vpii, cmp> pasivny;

    set<int> to_remove;

    vec<bool> pracuje(n, false);

    int prave_aktivny = 0;

    vi kto_prisiel(m);

    For(i, m){
        int op, k;
        cin >> op >> k;


        int sum = robotnici[k].ff + robotnici[k].sd;

        if (op == 1){

            kto_prisiel[i] = k;
            prichod[k] = i;
            if (sum > sq){
                pasivny.push({i+robotnici[k].ff, i}); //?
            }
            else{
                int start = i % sum;
                For(j, small[sum].size()){
                    int dif = j >= start ? j - start + 1 : small[sum].size() - (start - j) + 1;
                    if (dif > robotnici[k].ff) small[sum][j]++; 
                }
            }
        }

        else{
            if (sum > sq){
                to_remove.insert(prichod[k]);
                if (pracuje[k]){
                    pracuje[k] = false;
                    prave_aktivny--;
                }
            }
            else{
                int start = prichod[k] % sum;
                For(j, small[sum].size()){
                    int dif = j >= start ? j - start + 1 : small[sum].size() - (start - j) + 1;
                    if (dif > robotnici[k].ff) small[sum][j]--; 
                }
            }
        }



        while (!aktivny.empty()){

            pii curr = aktivny.top();

            if (curr.ff > i){
                break;
            }

            if (to_remove.find(curr.sd) != to_remove.end()){
                to_remove.erase(to_remove.find(curr.sd));
                aktivny.pop();
                continue;
            }

            prave_aktivny--;
            pasivny.push({i + robotnici[kto_prisiel[curr.sd]].ff, curr.sd});
            pracuje[kto_prisiel[curr.sd]] = false;
            aktivny.pop();
        }

        while (!pasivny.empty()){

            pii curr = pasivny.top();

            if (curr.ff > i){
                break;
            }

            if (to_remove.find(curr.sd) != to_remove.end()){
                to_remove.erase(to_remove.find(curr.sd));
                pasivny.pop();
                continue;
            }

            prave_aktivny++;
            aktivny.push({i + robotnici[kto_prisiel[curr.sd]].sd, curr.sd});
            pracuje[kto_prisiel[curr.sd]] = true;
            pasivny.pop();
        }


        int res = prave_aktivny;

        loop(j, 2, sq+1){
            res += small[j][i%j];
        }

        cout << res << '\n';
        
    }

    return 0;
}
