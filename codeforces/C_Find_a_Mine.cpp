#include <bits/stdc++.h>

using namespace std;


void solve(){
    int n, m;
    cin >> n >> m;

    cout << "? 1 1" << "\n";
    cout.flush();
    int d1;
    cin >> d1;

    cout << "? " << n << " 1" << "\n";
    cout.flush();
    int d2;
    cin >> d2;

    int x1, y1;

    if( (d1+d2-(n-1))%2 == 0 && (d1+d2-(n-1))/2 >= 0){
         
        y1 = (d1+d2-(n-1))/2;
        x1 = d1 - y1;

        cout << "? " << x1 + 1 << " " << y1 + 1 << "\n";
        cout.flush();
        int d3;
        cin >> d3;
        if (d3 == 0){
            cout << "! " << x1 + 1 << " " << y1 + 1 << "\n";
            return;
        }
    }

    cout << "? 1 " << m << "\n";
    cout.flush();
    int d4;
    cin >> d4;

    int x2, y2;

    x2 = (d1 + d4 - (m-1))/2;
    y2 = d1 - x2;

    cout << "! " << x2 + 1 << " " << y2 + 1 << "\n";



}


int main(){


    int t;
    cin >> t;
    while (t--) solve();
}