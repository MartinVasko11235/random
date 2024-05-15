#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

typedef vector<vector<pair<int, unsigned int>>> vvpii;

void dfs(int v, vvpii& adj, vector<bool>& visited, unsigned int mask){
    visited[v] = true;

    for (int i = 0; i < adj[v].size(); i++) 
    {

        if(visited[adj[v][i].first] || ((adj[v][i].second | mask) != mask)) continue;


        dfs(adj[v][i].first, adj, visited, mask);

        
    }
    
}

void solve(){
    int n, m; cin >> n >> m;

    vvpii adj(n);

    for (int i = 0; i < m; i++)
    {
        int a, b;
        unsigned int c;
        cin >> a >> b;
        a--; b--;
        cin >> c;

        adj[a].push_back(make_pair(b, c));
        adj[b].push_back(make_pair(a, c));
    }


    unsigned int mask = 0b111'1111'1111'1111'1111'1111'1111'1111;

    for (unsigned int i = 30; i < 32; i--)
    {
        vector<bool> visited(n, false);

        mask ^= 1 << i;

        dfs(0, adj, visited, mask);

        bool all = true;

        for (int j = 0; j < n; j++)
        {
            all = all && visited[j];
        }

        if(!all){
            mask ^= 1 << i;
        }
        
    }
    
    
    cout << mask << '\n';



}

int main(){

    int tt; cin >> tt;

    while(tt--) solve();

    return 0;
}