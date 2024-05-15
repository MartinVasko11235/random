#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;


bool cmp(pair<int, bool> a, pair<int, bool> b){


    if (a.first == b.first){
        return a.second;
    }
    return a.first < b.first;
}


int main(){

    unsigned int n, k; cin >> n >> k;

    vector<pair<int, bool>> a;

    for (int i = 0; i < n; i++)
    {
        int x, y; cin >> x >> y;



        a.push_back(make_pair(x, true));
        a.push_back(make_pair(y, false));
    }


    sort(a.begin(), a.end(), cmp);


    return 0;
}