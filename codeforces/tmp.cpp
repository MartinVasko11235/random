#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;


/**
 * Author: Simon Lindholm
 * Date: 2016-03-22
 * License: CC0
 * Source: hacKIT, NWERC 2015
 * Description: A set (not multiset!) with support for finding the n'th
 * element, and finding the index of an element.
 * To get a map, change \texttt{null\_type}.
 * Time: O(\log N)
 */


#include <bits/extc++.h> /** keep-include */
using namespace __gnu_pbds;

// template<class T>
// using Tree = tree<T, null_type, less<T>, rb_tree_tag,
//     tree_order_statistics_node_update>;

template<typename T>
using Tree = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;


void example() {
	Tree<int> t, t2; t.insert(8);
	auto it = t.insert(10).first;
	assert(it == t.lower_bound(9));
	assert(t.order_of_key(10) == 1);
	assert(t.order_of_key(11) == 2);
	assert(*t.find_by_order(0) == 8);
	t.join(t2); // assuming T < T2 or T > T2, merge t2 into t
}


vi memo;

int fibonaci(int n){

    if (memo[n] != -1) return memo[n];

    memo[n] = fibonaci(n-1) + fibonaci(n-2);

    return memo[n];
}

struct dsu{

    int n;

    vi parent;
    vi rank;

    dsu(int n): n(n){
        for(int i = 0; i < n; i++){
            parent[i] = i;
            rank[i] = 0;
        }
    }

    int find(int x){
        if (parent[x] == x) return x;
        return parent[x] = find(parent[x]);
    }

    void merge(int a, int b){
        int ra = find(a);
        int rb = find(b);
        if (rank[rb] < rank[ra]) swap(rb, ra);
        parent[ra] = rb;
        if (rank[ra] == rank[rb]) rank[rb]++;
    }


};

struct segment_tree{
    int n;
    vi tree;

    segment_tree(int n): n(n){
        tree.resize(4*n, 0);

    }

    int sum(int v, int l, int r, int tl, int tr){
        if (l > r) return 0;

        if (l==tl && r==tr) return tree[v];

        int tm = (tl + tr) / 2;

        return sum(2*v, l, min(r, tm), tl, tm) + sum(2*v+1, max(l, tm+1), r, tm+1, tr);
    }

    void update(int v, int tl, int tr, int pos, int val){
        if (tl == tr) tree[v] = val;

        int tm = (tl+tr)/2;

        if (pos <= tm) update(2*v, tl, tm, pos, val);
        else update(2*v+1, tm+1, tr, pos, val);

        tree[v] = tree[2*v] + tree[2*v+1];

    }
};


int main(){

    int n = 5; 

    memo.assign(n+1, -1);
    memo[0] = 0;
    memo[1] = 1;

    cout << fibonaci(n) << endl;

    cout << memo.at(3) << endl;

    example();

    return 0;
}
