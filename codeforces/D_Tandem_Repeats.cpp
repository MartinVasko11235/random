#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

void solve(){

    string s;
    cin >> s;

    int n = s.size();

    for(int sz = n/2; sz > 0; sz--){

        int bad = 0;
        
        for (int i = 0; i < n - sz; i++){
            int add;
            int sub;
            if (s[i] == '?' || s[i+sz] == '?') add = 0;
            else if (s[i] == s[i+sz]) add = 0;
            else add = 1;
            bad += add;

            if (i == sz - 1 && bad == 0){
                cout << 2*sz << '\n';
                return;
            }

            if (i > sz -1){
                if (s[i] == '?' || s[i-sz] == '?') sub = 0;
                else if (s[i] == s[i-sz]) sub = 0;
                else sub = 1;    
                bad -= sub;
                if (bad == 0){
                    cout << 2*sz << '\n';
                    return;
                }           
            }
        }
        
    }

    cout << "0\n";
    
}

int main(){

    ios::sync_with_stdio(false);
    cin.tie(NULL);

    #ifndef ONLINE_JUDGE
    freopen("in.txt", "r", stdin);
    freopen("out.txt", "w", stdout);
    freopen("log.txt", "w", stderr);
    #endif

    int tt; cin >> tt;

    while (tt--) solve();



    return 0;
}