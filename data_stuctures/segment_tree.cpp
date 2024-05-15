#include <bits/stdc++.h>

using namespace std;
class intervalovy_strom
{
    vector<int> strom; //hodnoty vrcholov v strome

    vector<int> zaciatok, koniec; //zaciatky a konce intervalov prisluchajucich 
                                  //jednotlivym vrcholom
    int n;

public:

    intervalovy_strom(int velkost) //konstruktor
    {
        n = 1;
        while(n < velkost) n *= 2; //najdeme najblizsiu vacsiu mocninu dvojky
        strom.resize(2*n, 0);

        zaciatok.resize(2*n); //predpocitame zaciatky a konce intervalov
        koniec.resize(2*n);
        for(int i=0; i<n; i++)
        {
            zaciatok[i+n] = i;
            koniec[i+n] = i+1;
        }
        for(int i=n-1; i>0; i--)
        {
            zaciatok[i] = zaciatok[i*2];
            koniec[i] = koniec[i*2+1];
        }
    }

    void zmen(int i, int h) //zmen hodnotu p_i na h
    {
        i += n;               //index i-teho listu
        strom[i] = h;

        //postupujeme zdola nahor po predkoch i-teho listu
        for(int predok = i/2; predok > 0; predok /= 2) 
        {
            strom[predok] = strom[predok*2] + strom[predok*2+1];
        }
    }

    //sucet prvkov s indexami z [l, r) pod vrcholom v
    int sucet(int l, int r, int v = 1) 
    {
        //nic co je pod vrcholom v nelezi v intervale [l, r)
        if(r <= zaciatok[v] || l >= koniec[v]) 
        {
            return 0; 
        }
        //vsetko pod vrcholom v je v intervale [l, r)
        if(r >= koniec[v] && l <= zaciatok[v]) 
        {
            return strom[v];
        }
        return sucet(l, r, v*2) + sucet(l, r, v*2+1); //delegovanie na synov
    }
};


struct segment_tree
{
    int n;
    vector<int> tree;
    vector<int> start, end;

    segment_tree(vector<int> arr)
    {
        int n = 1;

        while(n < arr.size()) n *= 2;

        tree.resize(2*n);

        start.resize(2*n);
        end.resize(2*n);

        for(int i = 0; i < n; i++)
        {
            start[i+n] = i;
            end[i+n] = i+1;
            tree[i+n] = arr[i];
        }

        for(int i = n-1; i>0; i--)
        {
            start[i] = start[i*2];
            end[i] = end[i*2 + 1];
            tree[i] = tree[2*i] + tree[2*i + 1];
        }
    }

    void update(int i, int val)
    {
        i += n;

        tree[i] = val;

        for(i/2; i > 0; i/=2)
        {
            tree[i] = tree[2*i] + tree[2*i + 1];
        }
    }

    int sum(int l, int r, int v = 1)
    {
        if(r <= start[v] || l >= end[v])
        {
            return 0;
        }
        else if (r >= end[v] && l <= start[v])
        {
            return tree[v];
        }
        return sum(l, r, 2*v) + sum(l, r, 2*v+1);
    }
};
