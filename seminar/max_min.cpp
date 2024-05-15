#include <bits/stdc++.h>

using namespace std;

class max_min{

    private:

        vector<int> data;
        int current_max;
        int current_min;

    public:

        max_min(){
            current_max = -1;
            current_min = INT_MAX;
        }

        void add(int x){
            data.push_back(x);
            current_max = x > current_max ? x : current_max;
            current_min = x < current_min ? x : current_min;
        }

        int get_max(){
            return current_max;
        }

        int get_min(){
            return current_min;
        }

        vector<int> get_data(){
            return data;
        }
};

int main(){

    max_min idk;

    idk.add(33);
    idk.add(10);
    cout << idk.get_max() << endl;
    cout << idk.get_min() << endl;
    idk.add(100);
    cout << idk.get_max() << endl;

}