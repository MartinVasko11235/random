#include <bits/stdc++.h>
#include <bits/extc++.h>

using namespace std;
using namespace __gnu_pbds;

using Tree = tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update>;



int n, lg;

vector<int> tin, tout;

vector<vector<int>> adj;

vector<vector<int>> up;

int timer;

void dfs(int v, int p){

    tin[v] = ++timer;

    up[v][0] = p;

    for(int i = 1; i <= lg; i++){
        up[v][i] = up[up[v][i-1]][i-1];
    }

    for (auto c : adj[v]){
        if (c == p) continue;
        dfs(c, v);
    }
}


bool is_ancestor(int u, int v){
    return tin[u] <= tin[v] && tout[u] >= tout[v];
}

int lca(int u, int v){
    if (is_ancestor(u, v)) return u;
    if (is_ancestor(v, u)) return v;

    for (int i = lg; i >= 0; i--){
        if (!is_ancestor(up[u][i], v)){
            u = up[u][i];
        }
    }

    return up[u][0];
}

int main(){

    n = 22;

    tin.resize(n);
    tout.resize(n);

    lg = ceil(log2(n));

    up.assign(n, vector<int>(lg+1));

    timer = 0;

    return 0;
}