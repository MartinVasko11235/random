#include <bits/stdc++.h>

using namespace std;

int timer;

vector<bool> visited;
vector<int> low;
vector<int> tin;

vector<vector<int>> graph;

void dfs(int v, int parent = -1){

    visited[v] = true;

    low[v] = timer++;
    tin[v] = timer;

    for(int to : graph[v]){
        if(to == parent) continue;

        if(visited[to]){
            low[v] = min(low[v], tin[to]);
        }
        else{
            dfs(to, v);
            low[v] = min(low[v], low[to]);
            if(low[to] > tin[v]){
                //is bridge
            }
        }
    }
    
}