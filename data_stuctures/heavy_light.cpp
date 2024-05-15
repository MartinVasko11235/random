#include <bits/stdc++.h>

using namespace std;

struct SegmentTree{

    vector<int> tree;
    vector<int> begin;
    vector<int> end;
    int n;

    SegmentTree(int size){

        n = 1;
        while(n < size){
            n <<= 1;
        }

        tree.resize(2*n, 0);
        begin.resize(2*n, 0);
        end.resize(2*n, 0);
        
        for (int i = 0; i < n; i++)
        {
            begin[i+n] = i;
            end[i+n] = i+1;
        }

        for (int i = n - 1; i > 0; i--)
        {
            begin[i] = begin[i << 1];
            end[i] = end[(i << 1) | 1];
        }
        int a = 22;

    }

    void update(int i, int val){

        i += n;

        tree[i] = val;

        for(int p = i >> 1; p>0; p>>=1){
            tree[p] = tree[p << 1] + tree[(p << 1) | 1];
        }
    }

    int sum(int l, int r, int v = 1){
        if(begin[v] >= r || end[v] <= l){
            return 0;
        }
        if(begin[v] >= l && end[v] <= r){
            return tree[v];
        }
        return sum(l, r, v << 1) + sum(l, r, (v << 1) | 1);
    }

};


int main(){
    
    SegmentTree sg_tree(10);

    sg_tree.update(0, 9);
    sg_tree.update(5, 11);
    sg_tree.update(4, 22);
    cout << sg_tree.sum(0, 10) << endl;
}