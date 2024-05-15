#include <bits/stdc++.h>

using namespace std;


void dfs(int v, vector<vector<int>> &graph, vector<bool> &visited,
         int &not_to_use) {
  if (v == not_to_use) {
    return;
  }
  visited[v] = true;
  for (int i = 0; i < graph[v].size(); i++) {
    if (graph[v][i] == not_to_use) {
      continue;
    }
    if (!visited[graph[v][i]]) {
      dfs(graph[v][i], graph, visited, not_to_use);
    }
  }
}

int main() {
  
  int n, p;
  cin >> n >> p;

  vector<vector<int>> graph(n);

  for (int i = 0; i < p; i++) {
    int a, b;
    cin >> a >> b;
    graph[a].push_back(b);
    graph[b].push_back(a);
  }

  int max_pocet = 0;
  int najlepsi = 0;

  for (int not_to_use = 0; not_to_use < n; not_to_use++) {
    vector<bool> visited(n, false);
    int pocet = 0;
    for (int i = 0; i < n; i++) {
      if (i == not_to_use || visited[i]) {
        continue;
      }
      pocet++;
      dfs(i, graph, visited, not_to_use);
    }

    if (pocet > max_pocet) {
      max_pocet = pocet;
      najlepsi = not_to_use;
    }
  }

  cout << najlepsi << " " << max_pocet << "\n";
}
