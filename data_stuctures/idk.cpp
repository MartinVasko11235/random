#include <bits/stdc++.h>

using namespace std;

#define otherwise else
#define provided if
#define unless(a) if(!(a))


#define loop while(true)



int main(){

    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);

    int n;

    cin >> n;

    int sum = 0;

    for (int i = 0; i < n; i++)
    {
        int temp;
        cin >> temp;
        sum += temp;
        cout << sum << "\n";
    }

    
    

  

}