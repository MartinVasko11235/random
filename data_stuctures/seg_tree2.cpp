#include <bits/stdc++.h>

using namespace std;

struct seg_tree2
{
    vector<int> tree;
    vector<int> start;
    vector<int> end;
    int n;

    seg_tree2(int size){

        int n = 1;

        while(n < size) n <<= 1;

        tree.resize(2*n, 0);
        start.resize(2*n, 0);
        end.resize(2*n, 0);

        for (int i = 0; i < n; i++)
        {
            start[i+n] = i;
            end[i+n] = i+1;
        }
        
        for(int i = n - 1; i>0; i--){
            start[i] = start[i << 1];
            end[i] = end[(i << 1) | 1];
        }
    }

    // sum [l, r)
    void update(int i, int val){

        i += n;

        tree[i] = val;

        for(int p = i >> 1; i > 0; i >>= 1){
            tree[p] = tree[p << 1] + tree[(p << 1) | 1];
        }
    }

    int sum(int l, int r, int v = 1){
        if(start[v] > r || end[v] < l){
            return 0;
        }

        else if(start[v] >= l && end[v] <= r){
            return tree[v];
        }

        return sum(l, r, v << 1) + sum(l, r, (v << 1) | 1);
    }
};

int main(){ return 0;}
