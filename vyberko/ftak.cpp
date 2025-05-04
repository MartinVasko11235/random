#include <bits/stdc++.h>

using namespace std;

void solve(){
    int n; cin >> n;

    int h, v;
    string b, tmp;

    vector<int> nh;
    vector<int> nv;

    int mnh = INT_MAX;
    int mxh = 0;
    int mnv = INT_MAX;
    int mxv = 0;

    for (int i = 0; i < n; i++){
        cin >> h >> v >> b >> tmp;
        if (b == "JE"){
            mnh = min(mnh, h);
            mxh = max(mxh, h);
            mnv = min(mnv, v);
            mxv = max(mxv, v);
        }
        else {
            nh.emplace_back(h);
            nv.emplace_back(v);
        }
    }

    int mnnh = INT_MAX;
    int mxnh = 0;
    int mnnv = INT_MAX;
    int mxnv = 0;

    for(int i : nh){
        if (i < mnh){
            mxnh = max(mxnh, i);
        }
        if (i > mxh){
            mnnh = min(mnnh, i);
        }
    }

    for(int i : nv){
        if (i < mnv){
            mxnv = max(mxnv, i);
        }
        if (i > mxv){
            mnnv = min(mnnv, i);
        }
    }

    int m; cin >> m;

    for (int i = 0; i < m; i ++){
        cin >> h >> v;
        if (mnh == INT_MAX){
            if ((h >= mnnh && h <= mxnh) || (v >= mnnv && v <= mxnv)){
                cout << "NEJNI FTAK\n";
            }
            else {
                cout << "ANI SRNKA NETUSI\n";
            }
        }
        else if (h >= mnh && h <= mxh && v >= mnv && v <= mxv){
            cout << "JE FTAK\n";
        }
        else if (h >= mnnh || h <= mxnh || v >= mnnv || v <= mxnv){
            
            cout << "NEJNI FTAK\n";
        }
        else {
            cout << "ANI SRNKA NETUSI\n";
        }
    }
}

int main(){
    ios_base::sync_with_stdio(false); cin.tie(nullptr);

    int t; cin >> t;

    for (int i = 0; i < t; i++){
        cout << "Case #" << i + 1 << ":\n";
        solve();
    }

    return 0;
}