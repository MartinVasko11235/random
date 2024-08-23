#include <initializer_list>
#include <iostream>
#include <numeric>
#include <string>
#include <vector>

using namespace std;


template<typename First, typename... Args>
auto sum(const First first, const Args... args){
    const auto values = {first, args...};
    return accumulate(values.begin(), values.end(), First{0});
}

int sum2(initializer_list<int> arr){
    int res = 0;
    for (int v : arr) res += v;
    return res;
}


int sum3(vector<int> arr){
    int res = 0;
    for (int v : arr) res += v;
    return res;
}

template<typename ... Args>
auto sum4(Args ... args){
    return (... + args);
}

template<typename ... Args>
auto logicaland(Args ... args){
    return (... && args);
}

template<typename T>
void print(T t){
    cout << t << '\n';
}

template<typename T, typename ... Args>
void print(T t, Args ... args){
    cout << t << ' ';
    print(args ...);
}

int main(int argc, char* argv[]){
    cout << "You have entered: " << argc << " arguments.\n";

    for (int i = 0; i < argc; i++){
        cout << "argument " << i+1 << ": " << argv[i] << '\n'; 
    }    
    string command = "echo \"Hello World\"";
    const char* cmd = command.c_str();
    system(cmd);


    cout << sum(1, 2, 3) << '\n';
    cout << sum(1, 1, 2, 3) << '\n';
    cout << sum2({1, 2, 3}) << '\n';
    cout << sum3({1, 2, 3}) << '\n';
    cout << sum4(1, 2, 3, 4, 5) << '\n';

    print(sum(1,2,3), "ahoj", sum4(1,4,3));

    bool a = true;
    bool b = false;
    
    if (logicaland(true, a, b)){
        cout << "ano\n";
    }
    else {
        cout << "nie\n";
    }
    
    int n; cin >> n;
    cout << n << '\n';
    print(22);
    
    return 0;
}
