#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<pii> vpii;

typedef vector<int> vi;

int get_subtree_sizes(int v, int p, vector<vpii> &adj, vector<bool> &is_removed, vi &subtree_size){
    subtree_size[v] = 1;

    for(auto c : adj[v]){
        if (is_removed[c.first] || c.first == p) continue;
        subtree_size[v] += get_subtree_sizes(c.first, v, adj, is_removed, subtree_size);
    }

    return subtree_size[v];
}

int get_centroid(int v, int p, int tree_size, vector<vpii> &adj, vector<bool> &is_removed, vi& subtree_size){
    for(auto c : adj[v]){
        if (is_removed[c.first] || p == c.first) continue;

        if (subtree_size[c.first] > 2*tree_size){
            return get_centroid(c.first, v, tree_size, adj, is_removed, subtree_size);
        }
    }

    return v;
}

void dfs(int v, int p, vector<vpii> &adj, vector<bool> &is_removed, int dist, 
        vpii &dist_diery, vpii &dist_ciele, unordered_map<int, pii> &diery, unordered_map<int, pii> &ciele){
    
    auto it1 = diery.find(v);
    auto it2 = ciele.find(v);

    if (it1 != diery.end()){
        dist_diery.push_back(make_pair(dist + (int)(*it1).second.second, v));
    }
    else if (it2 != ciele.end()){
        dist_ciele.push_back(make_pair(dist, v));
    }


    for(auto c : adj[v]){
        if (is_removed[c.first] || c.first == p) continue;

        dfs(c.first, v, adj, is_removed, dist + c.second, dist_diery, dist_ciele, diery, ciele);
    }
}


void solve_for_centroid(int centroid, vector<vpii> &adj, vector<bool> &is_removed, 
                vi &best, unordered_map<int, pii> diery, unordered_map<int, pii> ciele){
    
    vpii dist_diery;
    vpii dist_ciele;

    dfs(centroid, -1, adj, is_removed, 0, dist_diery, dist_ciele, diery, ciele);

    sort(dist_diery.begin(), dist_diery.end(), [](pii a, pii b){return a.first < b.first;});

    sort(dist_ciele.begin(), dist_ciele.end(), [ciele](pii a, pii b){
        return (*ciele.find(a.second)).second.first - a.first > (*ciele.find(b.second)).second.first - b.first;
        });

    vi pref_min(dist_diery.size());

    pref_min[0] = dist_diery[0].second;

    for (int i = 1; i < dist_diery.size(); i++)
    {
        pref_min[i] = min(pref_min[i-1], dist_diery[i].second);
    }
    

    int idx = dist_diery.size() - 1;

    for(pii ciel : dist_ciele){

        int dist_left = (*ciele.find(ciel.second)).second.first - ciel.first;

        if (dist_left < dist_diery[0].first) break;

        while(dist_left < dist_diery[idx].first){
            idx--;
        }

        best[ciel.second] = min(best[ciel.second], pref_min[idx]);

    }
    

}


void decompose(int v, vector<vpii> &adj, vector<bool> &is_removed, vi& subtree_size, 
                vi &best, unordered_map<int, pii> diery, unordered_map<int, pii> ciele){
    
    int tree_size = get_subtree_sizes(v, -1, adj, is_removed, subtree_size);

    int centroid = get_centroid(v, -1, tree_size, adj, is_removed, subtree_size);

    solve_for_centroid(centroid, adj, is_removed, best, diery, ciele);

    is_removed[centroid] = true;

    for(auto c : adj[centroid]){
        if (is_removed[c.first]) continue;

        decompose(c.first, adj, is_removed, subtree_size, best, diery, ciele);
    }


}






void solve(){

    int n; cin >> n;

    vector<vpii> adj(n);

    vpii parent(n, {-1, -1});

    vi p(n);

    for (int i = 1; i < n; i++)
    {
        int pp; cin >> pp;
        
        p[i] = pp;
        
    }

    vi ti(n);

    for (int i = 1; i < n; i++)
    {
        int t; cin >> t;

        ti[i] = t;
    }

    for (int i = 1; i < n; i++)
    {
        parent[i] = make_pair(p[i], ti[i]);

        adj[p[i]].push_back(make_pair(i, ti[i]));
        adj[i].push_back(make_pair(p[i], ti[i]));
    }
    
    int m; cin >> m;

    unordered_map<int, pii> diery;

    for(int i = 0; i < m; i++){
        int v, c, w;
        cin >> v >> c >> w;
        diery.insert(make_pair(v, make_pair(c, w)));
    }

    int q; cin >> q;

    unordered_map<int, pii> ciele;

    for(int i = 0; i < q; i++){
        int a, b;

        cin >> a >> b;

        ciele.insert(make_pair(a, make_pair(b, i)));

    }
    
    
}

int main(){

     

    int tt; cin >> tt;

    while(tt--) solve();

    return 0;
}