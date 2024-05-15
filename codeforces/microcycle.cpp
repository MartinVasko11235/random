#include <bits/stdc++.h>

using namespace std;

void dfs(int v, int p, vector<vector<pair<int, int>>>& adj, vector<int>& dist, vector<int>& parent, int& b, int& s, int& e, int c_dist){
    dist[v] = c_dist;
    parent[v] = p;

    for (int i = 0; i < adj.size(); i++)
    {
        if(adj[v][i].first == p) continue;

        if(dist[adj[v][i].first] == -1){
            dfs(adj[v][i].first, v,  adj, dist, parent, b, s, e, c_dist + adj[v][i].second);
        }
        else{
            int cycle_dist = dist[v] - dist[adj[v][i].first] + adj[v][i].second;
            if (cycle_dist < b){
                b = cycle_dist;
                s = v;
                e = adj[v][i].first;
            }
        }
    }
    
}


void solve(){
    int n, m;

    cin >> n >> m;

    vector<vector<pair<int, int>>> adj(n);


    for (int i = 0; i < m; i++)
    {
        int a, b, c;
        cin >> a >> b >> c;

        adj[a].push_back(make_pair(b, c));
        adj[b].push_back(make_pair(a, c));
    }
    
}

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    int t;
    cin >> t;
    while (t--)
    {
        solve();
    }
    
}