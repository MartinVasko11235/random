#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

int main(){

    int n; cin >> n;

    vi a(n);

    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }

    int res = 0;

    for (int i = 0; i < n; i++)
    {
        res++;

        if (i < n-1) res++;

        if (i < n-2){

            if (a[i] > a[i+1] && a[i+1] < a[i+2]){
                res++;

                if (a[i+2] > a[i] && i < n-3){
                    if(a[i+3] > a[i+1] && a[i+3] < a[i+2]) res++;
                }
            }

            if (a[i] < a[i+1] && a[i+1] > a[i+2]){
                res++;

                if (a[i+2] < a[i] && i < n-3){
                    if(a[i+3] < a[i+1] && a[i+3] > a[i+2]) res++;
                }
            }
        }
        
    }

 
    
    cout << res << '\n';
}