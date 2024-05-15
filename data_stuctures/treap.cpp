#include <bits/stdc++.h>

using namespace std;


struct item{
    item *l, *r;
    int key, prior;
    item(){}
    item(int key): key(key), prior(rand()), l(NULL), r(NULL){}
    item(int key, int prior): key(key), prior(prior), l(NULL), r(NULL){}
    
};

typedef item* pitem;


void split(pitem t, pitem &l, pitem &r, int key){
    if(!t) l = r = NULL;

    else if (t->key <= key){
        split(t->r, t->r, r, key);
        l = t;
    }
    else{
        split(t->l, l, t->l, key);
        r = t;
    }
}

void merge(pitem &t, pitem l, pitem r){
    if(!l || !r){
        t = l ? l : r;
    }
    else if(l->prior > r->prior){
        merge(l->r, l->r, r);
        t = l;
    }
    else{
        merge(r->l, l, r->l);
        t = r;
    }
}


void insert(pitem &t, pitem it){
    if(!t){
        t = it;
    }
    
    else if(it->prior > t->prior){
        split(t, it->l, it->r, it->key); 
        t = it;
    }
    else{
        insert(t->key <= it->key ? t->r : t->l, it);
    }
}


void erase(pitem &t, int key){
    if (t->key == key){
        pitem th = t;
        merge(t, t->l, t->r);
        delete th;
    }
    else{
        erase(t->key <= key ? t->r : t->l, key);
    }
}