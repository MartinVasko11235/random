#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<ll, ll> pii;

typedef vector<ll> vi;

struct interval{
    ll l, r;
    char type; //m, u, d

    int starts_at;
};


int main(){

    int n; cin >> n;

    vector<pii> lr(n);

    for (int i = 0; i < n; i++)
    {
        ll l, r;
        cin >> l >> r;
        lr[i] = make_pair(l, r);
    }

    vector<interval*> intervals;

    interval *curr_interval = new interval();

    curr_interval->l = lr[0].first;
    curr_interval->r = lr[0].second;
    curr_interval->starts_at = 0;

    for (int i = 0; i < n; i++)
    {
        int maxl = max(curr_interval->l, lr[i].first);
        int minr = min(curr_interval->r, lr[i].second);

        if (minr < maxl){
            if(intervals.empty()){
                if(lr[i].first > curr_interval->r){
                    curr_interval->type = 'm';
                }
                else{
                    curr_interval->type = 'd';
                }
            }

            else{

                if(lr[i].second < curr_interval->l){
                    curr_interval->type = 'd';
                }

                else{

                    if(intervals.back()->l > curr_interval->r){
                        curr_interval->type = 'm';
                    }

                    else{
                        curr_interval->type = 'u';
                    }
                }
            }

            intervals.push_back(curr_interval);

            curr_interval = new interval();

            curr_interval->l = lr[i].first;
            curr_interval->r = lr[i].second;
            curr_interval->starts_at = i;
            
        }
        else{
            curr_interval->l = maxl;
            curr_interval->r = minr;
        }
    }

    if (intervals.empty()){
        curr_interval->type = 'u';
    }
    else{
        if(curr_interval->l > intervals.back()->r){
            curr_interval->type = 'u';
        }

        else{
            curr_interval->type = 'm';
        }
    }

    intervals.push_back(curr_interval);


    vi res(n);

    int min_allowed = intervals.back()->l;

    int ind = intervals.size() - 1; 

    for (int i = n-1; i >= 0; i--)
    {
        if (intervals[ind]->starts_at > i){
            ind--;
        }

        if (intervals[ind]->type == 'u'){
            res[i] = intervals[ind]->l;
        }

        else if(intervals[ind]->type == 'm'){
            res[i] = intervals[ind]->r;
            min_allowed = intervals[ind]->r;
        }

        else{
            if (min_allowed < lr[i].first) min_allowed = lr[i].first;
            res[i] = min_allowed;
        }

    }

    for (int i = 0; i < n; i++)
    {
        cout << res[i] << (i == n-1 ? "\n" : " ");
    }
    
    
    



    return 0;
    
}