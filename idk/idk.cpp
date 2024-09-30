#include <iostream>
#include <vector>

using namespace std;

int main() {

    int n;
    cin >> n;

    vector<int> a;

    for (int i = 0; i < n; i++){
        int temp;
        cin >> temp;
        a.push_back(temp); //alebo a.emplace_back(temp)
    }

    // alebo takto:

    vector<int> b(n);

    for (int i = 0; i < n; i++){
        cin >> b[i];
    }
    
    return 0;    
}
