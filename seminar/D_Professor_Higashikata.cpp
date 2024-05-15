#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

int main(){
    int n, m, q;
    cin >> n >> m >> q;

    string s;
    cin >> s;

    set<int> indecies;

    for (int i = 0; i < n; i++)
    {
        indecies.insert(i);
    }

    vi new_index(n, -1);

    vi new_bin_string(n, 0);

    int curr_ind = 0;

    for (int i = 0; i < m; i++)
    {
        int l, r;
        cin >> l >> r;

        auto itl = indecies.lower_bound(l);
        auto itr = indecies.upper_bound(r);

        for (auto i = itl; i != itr; i++)
        {
            new_index[*i] = curr_ind;
            new_bin_string[curr_ind] = s[*i] == '1' ? 1 : 0;
            curr_ind++;
        }

        indecies.erase(itl, itr);
        

    }

    //TODO
    
    
}