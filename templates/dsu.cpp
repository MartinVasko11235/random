#include <bits/stdc++.h>
using namespace std;

struct dsu{

    vector<int> parent;
    vector<int> rank;

    dsu(int n){
        parent.resize(n);
        rank.resize(n);

        for(int i = 0; i < n; i++){
            parent[i] = i;
            rank[i] = 0;
        }
    }

    int find(int x){
        if (parent[x] == x){
            return x;
        }

        return parent[x] = find(parent[x]);
    }

    void merge(int a, int b){
        a = find(a);
        b = find(b);

        if (a == b) return;

        if (rank[a] > rank[b]) swap(a, b);

        parent[a] = b;

        if (rank[a] == rank[b]) rank[b]++;
    }

    bool is_connected(int a, int b){
        return find(a) == find(b);
    }
    

};


int main(){
    
    dsu d(5);

    d.merge(0, 3);

    cout << d.find(4) << '\n';

    d.merge(0, 4);

    cout << d.find(4) << ' ' << d.find(3) << '\n';
}