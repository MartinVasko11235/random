#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

struct node
{
    int idx, v;
    int dist;

    node(int idx, int v, int dist) : idx(idx), v(v), dist(dist){};
};


int main(){
    int n; cin >> n;

    string smer; cin >> smer;


    vi a(n);

    for (int i = 0; i < n; i++)
    {
        int x; cin >> x;
        a[i] = x;
    }

    vi directions;

    directions.push_back(1);

    if (smer == "two"){
        directions.push_back(-1);
    }


    vector<unordered_set<int>> visited(n);

    queue<node> q;

    q.push(node(0, a[0], 0));
    
    while (!q.empty())
    {
        node curr = q.front();
        q.pop();

        for(int dir : directions){

            if (curr.idx + dir*curr.v < 0) continue;

            if (curr.idx + dir*curr.v >= n){
                cout << curr.dist + 1 << '\n';
                return 0;
            }
            
            if(visited[curr.idx + dir*curr.v].find(curr.v) != visited[curr.idx + dir*curr.v].end()) continue;

            q.push(node(curr.idx + dir*curr.v, curr.v, curr.dist + 1));

            visited[curr.idx + dir*curr.v].insert(curr.v);

        }

        for(int dir : directions){

            if (curr.idx + dir*a[curr.idx] < 0) continue;

            if (curr.idx + dir*a[curr.idx] >= n){
                cout << curr.dist + 1 << '\n';
                return 0;
            }
            
            if(visited[curr.idx + dir*a[curr.idx]].find(a[curr.idx]) != visited[curr.idx + dir*a[curr.idx]].end()) continue;

            q.push(node(curr.idx + dir*a[curr.idx], a[curr.idx], curr.dist + 1));

            visited[curr.idx + dir*a[curr.idx]].insert(a[curr.idx]);

        }
    }


    cout << "-1\n";

    return 0;
    
    
}