#include <bits/stdc++.h>

using namespace std;


class intervalovy_strom
{
    class vrchol
    {
        int hodnota;
        int lazy; //hodnota, ktoru budem musiet povedat svojim synom, ked
        //sa ich najblizsie budem nieco pytat (teda hodnota, ktoru ma 
        //uradnik zapisanu v diari)

        int zaciatok, koniec; //zaciatok a koniec mojho intervalu
        vrchol *lavy, *pravy; //smerniky na synov

    public:

        //konstruktor. Vytvori vrchol zodpovedajuci intervalu 
        //[zac, kon) aj s celym podstromom
        vrchol(int zac, int kon) : zaciatok(zac), koniec(kon) 
        {
            hodnota = 0;
            lazy = 1;
            if(koniec - zaciatok > 1)
            {
                int stred = (zaciatok + koniec)/2;
                lavy = new vrchol(zaciatok, stred);
                pravy = new vrchol(stred, koniec);
            }
            else
            {
                lavy = pravy = NULL;
            }
        }

        //metoda, ktora synom posunie poziadavky, ktore im mali prist uz skor 
        //ale bol som lenivy
        void nebud_lenivy()
        {
            if(lazy != 1)
            {
                lavy->lazy *= lazy;
                lavy->hodnota *= lazy;
                pravy->lazy *= lazy;
                pravy->hodnota *= lazy;
                lazy = 1;
            }
        }

        //prvy druh poziadavky
        void zmen(int i, int h)
        {
            if(zaciatok == i && koniec == i+1)
            {
                hodnota = h;
                return;
            }
            nebud_lenivy();
            int stred = (zaciatok + koniec)/2;
            if(i < stred) lavy -> zmen(i, h);
            else pravy->zmen(i, h);
            hodnota = lavy->hodnota + pravy->hodnota;
        }

        //druhy druh poziadavky
        int sucet(int l, int r)
        {
            if(l >= koniec || r <= zaciatok) return 0;
            if(l <= zaciatok && r >= koniec) return hodnota;
            nebud_lenivy();
            return lavy->sucet(l, r) + pravy->sucet(l, r);
        }

        //treti druh poziadavky
        void zmen_interval(int l, int r, int v)
        {
            if(l >= koniec || r <= zaciatok) return;
            if(l <= zaciatok && r >= koniec)
            {
                lazy *= v; //toto bude fungovat, aj s prazdnym diarom
                hodnota *= v;
                return;
            }
            nebud_lenivy();
            lavy->zmen_interval(l, r, v);
            pravy->zmen_interval(l, r, v);
            hodnota = lavy->hodnota + pravy->hodnota;
        }

        ~vrchol() //destruktor
        {
            if(lavy != NULL) delete lavy;
            if(pravy != NULL) delete pravy;
        }
    };

    vrchol *koren;

public:
    intervalovy_strom(int velkost)
    {
        int n = 1;
        while(n < velkost) n *= 2; //najdeme najblizsiu vacsiu mocninu dvojky
        koren = new vrchol(0, n);
    }

    void zmen(int i, int h)
    {
        koren->zmen(i, h);
    }

    int sucet(int l, int r)
    {
        return koren->sucet(l, r);
    }

    void zmen_interval(int l, int r, int v)
    {
        koren->zmen_interval(l, r, v);
    }

    ~intervalovy_strom()
    {
        delete koren;
    }
};
