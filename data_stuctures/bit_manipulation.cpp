#include <bits/stdc++.h>

using namespace std;

void print_bin(uint x){
    
    cout << format("{:b}", x) << "\n";

}

bool is_set(uint x, int i){
    return (x >> i) & 1;
}

int main(){

    uint x = 123;

    print_bin(x);

    uint y = x ^ (1 << 5);
    uint z = x & ~(1 << 1);

    print_bin(y);
    print_bin(z);
}