#include <bits/stdc++.h>

using namespace std;

struct dsu
{
    vector<int> rank;
    vector<int> parent;

    dsu(int n){
        rank.resize(n);
        parent.resize(n);
        for (int i = 0; i < n; i++)
        {
            rank[i] = 0;
            parent[i] = i;
        }
        
    }

    int find(int x){
        
        if(parent[x] == x){
            return x;
        }

        return parent[x] = find(parent[x]);
    }

    void merge(int a, int b){
        a = find(a);
        b = find(b);

        if (rank[a] > rank[b]){
            parent[b] = a;
        }
        else if (rank[b] > rank[a])
        {
            parent[a] = b;
        }
        else{
            parent[a] = b;
            rank[b]++;
        }
        
    }
};
