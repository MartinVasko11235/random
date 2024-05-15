#include <bits/stdc++.h>

using namespace std;



void dfs(int v, bool is_a, int n, string& a, string& b, vector<bool>& vis_a, vector<bool>& vis_b)
{
    if (is_a){

        if (v == n-1) vis_b[n-1] == true;

        if (vis_a[v]) return;

        vis_a[v] = true;

        if (v > 0){
            if (a[v-1] == '<') dfs(v-2, true, n, a, b, vis_a, vis_b);
        }

        if (v < n-1){
            if (a[v+1] == '>') dfs(v+2, true, n, a, b, vis_a, vis_b);
        }

        if (b[v] == '<') dfs(v-1, false, n, a, b, vis_a, vis_b);

        if (b[v] == '>')dfs(v+1, false, n, a, b, vis_a, vis_b);
    }

    else {
        if (v == n-2) vis_b[n-1] == true;

        if (vis_b[v]) return;

        vis_b[v] = true;

        if (v > 0){
            if (b[v-1] == '<') dfs(v-2, false, n, a, b, vis_a, vis_b);
        }

        if (v < n-1){
            if (b[v+1] == '>') dfs(v+2, false, n, a, b, vis_a, vis_b);
        }

        if (a[v] == '<') dfs(v-1, true, n, a, b, vis_a, vis_b);

        if (a[v] == '>')dfs(v+1, true, n, a, b, vis_a, vis_b);
    }
}

void solve(){
    
    int n; cin >> n;
    string a;
    string b;

    cin >> a;

    cin >> b;

    vector<bool> vis_a(n, false);
    vector<bool> vis_b(n, false);

    dfs(0, true, n, a, b, vis_a, vis_b);

    cout << (vis_b[n-1] ? "YES" : "NO") << "\n";


}


int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    int tt;
    cin >> tt;
    while (tt--)
    {
        solve();
    }
    
} 