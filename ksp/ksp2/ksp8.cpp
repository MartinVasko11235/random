#include <bits/stdc++.h>

using namespace std;

void solve(){
    int n;
    cin >> n;

    if (n == 1){
        cout << "0 0\n\n";
        return;
    }

    vector<vector<int>> adj(n);

    for (int i = 0; i < n-1; i++){
        int a, b;
        cin >> a >> b;
        a--; b--;
        adj[a].emplace_back(b);
        adj[b].emplace_back(a);
    }

    vector<int> tin(n);
    vector<int> tout(n);
    int time = 0;
    vector<int> mx(n);
    vector<int> smx(n);
    vector<int> mxc(n);
    vector<int> mn(n);
    vector<int> smn(n);
    vector<int> mnc(n);
    
    auto dfs1 = [&](int v, int p, auto&& dfs1) -> pair<int, int>{
        tin[v] = time++;
        int curr_mx = v;
        int curr_smx = -1;
        int curr_mxc = 0;
        int curr_mn = v;
        int curr_smn = INFINITY;
        int curr_mnc = 0;
        for (int c : adj[v]){
            if (c != p){
                auto [ret_mn, ret_mx] = dfs1(c, v, dfs1);
                if (ret_mn < curr_mn){
                    curr_smn = curr_mn;
                    curr_mn = ret_mn;
                    curr_mnc = c;
                }
                else if (ret_mn < curr_smn){
                    curr_smn = ret_mn;
                }
                if (ret_mx > curr_mx){
                    curr_smx = curr_mx;
                    curr_mx = ret_mx;
                    curr_mxc = c;
                }
                else if (ret_mx > curr_smx){
                    curr_smx = ret_mx;
                }
            }
        }
        tout[v] = time++;
        mx[v] = curr_mx;
        smx[v] = curr_smx;
        mxc[v] = curr_mxc;
        mn[v] = curr_mn;
        smn[v] = curr_smn;
        mnc[v] = curr_mnc;
        
        return {curr_mn, curr_mx};
    };

    dfs1(0, -1, dfs1);

    auto is_ancestor = [&](int u, int v){
        return tin[u] <= tin[v] && tout[u] >= tout[v];
    };

    vector<pair<int, int>> res_e_c(n);
    vector<vector<pair<int, int>>> res(n);

    auto dfs2 = [&](int v, int p, int pmn, int pmx, auto&& dfs2) -> void{

        vector<tuple<int, int, int>> comps;
        if (p != -1){
            comps.emplace_back(make_tuple(p, pmn, pmx));
        }
        for (int c : adj[v]){
            if (c != p){
                comps.emplace_back(make_tuple(c, mn[c], mx[c]));
            }
        }

        sort(comps.begin(), comps.end(), [](tuple<int, int, int> a, tuple<int, int, int> b){return get<1>(a) < get<1>(b);});

        int c = comps.size()-1;
        int fmx = get<2>(comps[0]);
        int i = 1;
        bool good = true;

        for (; i < comps.size(); i++){
            int curr = get<1>(comps[i]);
            if (curr - 1 == v){
                good = false;
                break;
            }
            fmx = max(fmx, get<2>(comps[i]));
            res[v].emplace_back(make_pair(curr-1, curr));
        }

        if (!good){

            bool is_parent = get<0>(comps[i]) == p;
            int badc = get<0>(comps[i]);
            int smx = get<2>(comps[i]);
            i++;
            for(; i < comps.size(); i++){
                int curr = get<1>(comps[i]);
                res[v].emplace_back(make_pair(curr-1, curr));
                if (( is_parent && !(is_ancestor(v, get<1>(comps[i])-1)) ) || is_ancestor(badc, get<1>(comps[i])-1)){
                    smx = max(smx, get<2>(comps[i]));
                }
                else{
                    fmx = max(fmx, get<2>(comps[i]));
                }
            }
            int minmax = min(fmx, smx);
            if (minmax+1 == v){
                res[v].emplace_back(make_pair(minmax, minmax+2));
                c++;
            }
            else{
                res[v].emplace_back(make_pair(minmax, minmax+1));
            }
        }

        res_e_c[v] = make_pair(comps.size()-1, c);

        for(int c : adj[v]){
            if (c != p){
                int cmnp = v;
                int cmxp = v;

                if (c == mnc[v]) cmnp = min(pmn, smn[v]);
                else cmnp = min(pmn, mn[v]);
                if (c == mxc[v]) cmxp = max(pmx, smx[v]);
                else cmxp = max(pmx, mx[v]);

                dfs2(c, v, cmnp, cmxp, dfs2);
            }
        }

    };

    dfs2(0, -1, INFINITY, -1, dfs2);

    for (int i = 0; i < n; i++){
        cout << res_e_c[i].first << ' ' << res_e_c[i].second << '\n';
        for (auto &pii : res[i]){
            cout << pii.first+1 << ' ' << pii.second+1 << '\n';
        }
        cout << '\n';
    }

}

int main(){

    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    int t;
    cin >> t;

    while(t--)
        solve();
    
    return 0;
}
