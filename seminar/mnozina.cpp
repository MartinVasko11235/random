#include <bits/stdc++.h>

using namespace std;

class Mnozina{
    //vhodne len pre male hodnoty (<10^6)

    private:

        vector<bool> data;
        int max_int;

    public:

        Mnozina(int max_int){
            this->max_int = max_int;
            data.resize(max_int + 1, false);
        }

        Mnozina(int max_int, vector<int> arr){
            this->max_int = max_int;
            data.resize(max_int + 1, false);
            for (int i = 0; i < arr.size(); i++)
            {
                data[arr[i]] = true;
            }
            
        }

        int get_max_int(){
            return max_int;
        }

        vector<bool> get_data(){
            return data;
        }

        void insert(int x){
            if (x > max_int || x < 0){
                return;
            }

            data[x] = true;
        }
        
        void remove(int x){
            if (x > max_int || x < 0){
                return;
            }

            data[x] = false;
        }

        bool contains(int x){
            return data[x];
        }

        Mnozina operator+(Mnozina other){

            int new_max_int = max(this->get_max_int(), other.get_max_int());

            Mnozina res(new_max_int);

            for (int i = 0; i < this->get_max_int(); i++)
            {
                if(this->contains(i)){
                    res.insert(i);
                }
            }

            for (int i = 0; i < other.get_max_int(); i++)
            {
                if(other.contains(i)){
                    res.insert(i);
                }
            }
            
            return res;
        }

        Mnozina operator-(Mnozina other){

            Mnozina res(max_int);

            for (int i = 0; i < max_int; i++)
            {
                if (i > other.get_max_int()){
                    break;
                }

                if(other.contains(i)){
                    res.remove(i);
                }
            }

            return res;
            
        }

        
};

int main(){

    Mnozina m(10);
    Mnozina n(10);

    m.insert(3);
    m.insert(4);

    n.insert(5);

    Mnozina o = m + n;

    cout << format("{} {} {} {}", o.contains(3), o.contains(4), o.contains(5), o.contains(6)) << endl;
}