    #include <bits/stdc++.h>

    using namespace std;

    #define int long long


    #define all(a) a.begin(), a.end()
    #define For(i, n)  for(int (i) = 0; (i) < (n); (i)++)
    #define rfor(i, n) for(int (i) = (n)-1; (i) >= 0; i--)
    #define loop(i, a, b) for(int (i) = (a); (i) < (b); (i)++)
    #define rloop(i, a, b) for(int (i) = (b) - 1; (i) >= (a); (i)--)
    #define each(i, v) for(auto& i : v)

    #define uset unordered_set
    #define umap unordered_map
    #define vec vector

    #define ff first
    #define sd second

    typedef string str;
    typedef vector<int> vi;
    typedef vector<bool> vb;
    typedef pair<int, int> pii;
    typedef vector<string> vstr;
    typedef vector<vector<int>> vvi;
    typedef vector<pair<int, int>> vpii;
    typedef vector<vector<pair<int, int>>> vvpii;

    const int mod = 1'000'000'007;

    const string yes = "Yes";
    const string no = "No";

    #ifdef ASDFG
    #define debug(x...) cerr << "[" << #x << "] = ["; _print(x)
    #else
    #define debug(x...)
    #endif


    struct Solution{

        bool multiple_test_case = true;
        bool is_interactive = false;

        void solve(){
            int n, k;
            cin >> n >> k;

            vpii prizes;

            vi a(n);
            vi b(n);

            For(i, n){
                cin >> a[i];
            }

            For(i, n){
                cin >> b[i];
            }

            For(i, n){
                if (b[i] - a[i] <= 0) continue;

                prizes.push_back({a[i], b[i]});
            }

            sort(all(prizes), [](pii a, pii b){return a.second > b.second;});

            int res = 0;

            multiset<int, greater<int>> freeitms;

            For(i, prizes.size()){
                if (i >= k) res += prizes[i].second;

                if (i < k) freeitms.insert(prizes[i].first);

                res -= prizes[i].first;
            }

            int tmp = res;

            // each(i, prizes){
            //     cout << i.first <<  ' ' << i.second << "    ";
            // }
            // cout << '\n';

            if (k==0){
                cout << res << '\n';
                return;
            }

            if (k >= prizes.size()){
                cout << "0\n";
                return;
            }

            for(int i = 0; i < prizes.size() - k; i++){

                // cout << tmp + prizes[i].first << ' ' << prizes[i+k].second << "    ";

                tmp = tmp + *freeitms.begin() - prizes[i+k].second;

                freeitms.erase(freeitms.begin());

                freeitms.insert(prizes[i+k].first);

                res = max(res, tmp);
            }

            // cout << '\n';

            cout << max((int)0, res) << '\n';
        }

    };

    int32_t main(){

        Solution solution;

        if (!solution.is_interactive){
            ios_base::sync_with_stdio(false);
            cin.tie(NULL);

            #ifdef ASDFG
            freopen("in.txt", "r", stdin);
            freopen("out.txt", "w", stdout);
            #endif
        }

        #ifdef ASDFG 
        freopen("log.txt", "w", stderr);
        #endif
        
        int _t = 1;

        if (solution.multiple_test_case) cin >> _t;

        while(_t--) solution.solve();

        return 0;
    }