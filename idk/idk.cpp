#include <bits/stdc++.h>

using namespace std;

int main() {

    int v[] = {1, 1, 1, 2, 2, 2, 3, 3, 3};
    unordered_set<int> dobre;
    unordered_set<int> vsetky;


    
    do
    {
        int temp = v[0] + 10 * v[1] + 100 * v[2] + 1000 * v[3] + 10000 * v[4] + 100000 * v[5] + 1000000 * v[6] + 10000000 * v[7] + 100000000 * v[8];
        if(v[0] != 1 && v[1]!= 1 && v[2] != 1){
            dobre.insert(temp);
        }
        vsetky.insert(temp);

    } while (next_permutation(v, v + 9));
    
    cout << dobre.size() << endl;
    cout << vsetky.size() << endl;

    
}