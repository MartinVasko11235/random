#include <bits/stdc++.h>

using namespace std;

typedef unsigned long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;


const unsigned long long int mod = 1'000'000'007;


bool cmp(pair<int, bool> a, pair<int, bool> b){


    if (a.first == b.first){
        return a.second > b.second;
    }
    return a.first < b.first;
}

long long binpow(ll a, ll b, int m){
    if (b == 0) return 1;
    ll res = binpow(a, b/2, m);
    res = res * res % m;
    if (b&1) return res * a % m;
    return res;
}



unsigned int inverse(int a, int m) {
  return binpow(a, m-2, m);
}




unsigned long long binomial_coefficient(unsigned int n, unsigned int k, long long factorial[]) {
    unsigned long long inv = inverse((factorial[k] * factorial[n - k]) % mod, mod);
    unsigned long long res = (factorial[n] * inv);
    res %= mod;
    return res % mod;
}


int main(){

    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    unsigned int n, k; cin >> n >> k;

    vector<pair<int, bool>> a;

    for (int i = 0; i < n; i++)
    {
        int x, y; cin >> x >> y;



        a.push_back(make_pair(x, true));
        a.push_back(make_pair(y, false));
    }


    sort(a.begin(), a.end(), cmp);

    

    long long factorial[n+1];

    

    factorial[0] = 1;

    for (long long i = 1; i < n+1; i++)
    {
        unsigned long long next = factorial[i-1] * i;
        next %= mod;
        factorial[i] = next%mod;

    }
    

    unsigned int sum = 0;

    unsigned int count = 0;


    for (unsigned int i = 0; i < a.size(); i++)
    {
        if (a[i].second){
            if(count >= k-1){
                unsigned long long coef = binomial_coefficient(count, k-1, factorial);
                coef %= mod;
                sum += coef%mod;
                sum %= mod;
            }

            count++;
        }
        else count--;
       
    }

    if(sum < 0){
        return 1;
    }

    cout << sum%mod << '\n';

    return 0;
    
    
}