#include <bits/stdc++.h>


using namespace std;

template<typename K, typename V>
class defaultMap : public unordered_map<K, V>{

public:

    V operator[](K key){
        auto res = this->find(key);
        if(res == this->end()) 
        {
            return 0;
        }

        return res->second;
    }

    

};


int main(){

    defaultMap<int, int> a;

    a.insert({1, 2});

    cout << a[1] << endl;

    

    cout << a[22] << endl;

    return 0;
}