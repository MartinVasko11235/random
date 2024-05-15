#include <bits/stdc++.h>

using namespace std;

typedef vector<int> vi;

bool cmp(pair<int, int> a, pair<int, int> b){
    return a.first < b.first;
}


void solve(){
    int n, m, k;

    cin >> n >> m >> k;

    vi start(n);
    vi end(n);
    vector<pair<int, int>> intervals;

    for (int i = 0; i < m; i++)
    {
        int a, b;
        cin >> a >> b;

        start[a]++;
        end[b]++;
        intervals.push_back(make_pair(a, b));
        
    }



    vi a(n);

    int started = 0;
    int ended = 0;
    int zeroes = 0;

    for (int i = 0; i < n; i++)
    {
        started += start[i];
        a[i] = started - ended;
        if(started == ended) zeroes++;
        ended += end[i];
    }
    

    
    
    
}

int main(){
    int tt; cin >> tt;

    while(tt--) solve();

    return 0;
}