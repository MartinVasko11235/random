#include <bits/stdc++.h>

using namespace std;


typedef vector<int> vi;
typedef long long  ll;

struct seg_tree{

    vi beg;
    vi end;
    vi sum;
    vi mul;
    vi neg;
    int n;

    seg_tree(int size){
        n = 1;
        while (n < size) {
            n <<= 1;
        }

        beg.resize(n, 0);
        end.resize(n, 0);
        sum.resize(n, 0);
        mul.resize(n, 1);
        neg.resize(n, 0);



        for (int i = 0; i < n; i++) {
            beg[i+n] = i;
            end[i+n] = i+1;
        }

        for (int i = n-1; i>0; i--) {
            beg[i] = beg[i<<1];
            end[i] = end[(i<<1) | 1];
        }

        
    }

};


int main(){


    return 0;
}