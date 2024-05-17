#include <bits/stdc++.h>
using namespace std;



class segment_tree{

    vector<int> t;

    int n;

    int neutral_value = 0; //moze to byt treba zmenit (napr. pri nasobeni to treba zmenit na 1)

    int __operator(int a, int b){
        // asociativna operacia intervalacu ktoru treba implementovat
        // napr. :
        // return a + b;
        // return max(a, b);
        // return min(a, b);
    }

    void __build(vector<int> &a, int v, int tl, int tr){
        if (tl == tr){
            t[v] = a[tl];
            return;
        }

        int tm = (tl + tr)/2;

        __build(a, v<<1, tl, tm);
        __build(a, (v<<1)|1, tm+1, tr);

        t[v] = __operator(t[v<<1], t[(v<<1)|1]);
    }


    void __update(int v, int tl, int tr, int pos, int val){
        if (tl == tr){
            t[v] = val;
            return;
        }

        int tm = (tl + tr)/2;

        if (pos <= tm){
            __update(v<<1, tl, tm, pos, val);
        }
        else{
            __update((v<<1)|1, tm+1, tr, pos, val);
        }

        t[v] = __operator(t[v<<1], t[(v<<1)|1]);
    }

    int __get(int v, int tl, int tr, int l, int r){

        if (l>r){
            return neutral_value;
        }

        if (tl == l && tr == r){
            return t[v];
        }

        int tm = (tl + tr)/2;

        return __operator(__get(v<<1, tl, tm, l, min(r, tm)), __get((v<<1)|1, tm+1, tr, max(l, tm+1), r));
    }

    public:

    segment_tree(vector<int> a){
        n = a.size();
        t.resize(4*n);
        __build(a, 1, 0, n-1);
    }

    void update(int pos, int val){
        __update(1, 0, n-1, pos, val);
    }

    int get(int l, int r){
        return __get(1, 0, n-1, l, r);
    }

};

int main(){

    vector<int> a = {1, 2, 3, 3, 3, 5};

    segment_tree st(a);

    cout << st.get(1, 3) << '\n';

    st.update(2, 33);

    cout << st.get(1, 3) << '\n';

    return 0;
}

