#include <bits/stdc++.h>

using namespace std;

vector<int> tree;

vector<int> lazy;



void push(int v, int tl, int tr){
    int tm = (tl + tr) / 2;
    tree[2*v] += lazy[v] * (tm - tl + 1);
    tree[2*v+1] += lazy[v] * (tr - tm);
    lazy[2*v] += lazy[v];
    lazy[2*v+1] += lazy[v];
    lazy[v] = 0;
}


int sum(int v, int tl, int tr, int l, int r){

    if (l > r){
        return 0;
    }

    if (l == tl && r == tr){
        return tree[v]; 
    }

    push(v, tl, tr);

    int tm = (tl + tr) / 2;
    return sum(2*v, tl, tm, l, min(tm, r)) + sum(2*v+1, tm+1, tr, max(tm+1, l), r);
}


void update(int v, int tl, int tr, int l, int r, int add){

    if (l > r) return;


    if (tl == l && tr == r){
        tree[v] += add * (tr - tl + 1);
        lazy[v] += add;
        return;
    }

    int tm = (tl + tr) / 2;

    push(v, tl, tr);

    update(2*v, tl, tm, l, min(tm, r), add);

    update(2*v+1, tm+1, tr, max(tm+1, l), r, add);

    tree[v] = tree[2*v] + tree[2*v+1];

}


int main(){

    int n = 10;

    tree.resize(4*n, 0);


    cout << sum(1, 0, n-1, 0, n-1) << endl;

    cout << sum(1, 0, n-1, 0, 3) << endl;

    

}