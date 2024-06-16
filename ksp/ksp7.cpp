#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

template<typename T>
using indexed_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

#define int long long

#define all(a) a.begin(), a.end()
#define For(i, n)  for(int (i) = 0; (i) < (n); (i)++)
#define rFor(i, n) for(int (i) = (n)-1; (i) >= 0; i--)
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
const int inf = LONG_LONG_MAX/2;

const string yes = "YES\n";
const string no = "NO\n";

template<typename T>
ostream &operator<<(ostream &os, const vec<T> &a){
    For(i, a.size()){
        if(i == a.size()-1) os << a[i];
        else os << a[i] << ' ';
    }
    return os;
}

#ifdef ASDFG
#define debug(a) cerr << #a << " = " << a << '\n';
#else
#define debug(a)
#endif

struct Solution{

    vector<int> sort_cyclic_shifts(string s){
        int n = s.size();
        int alphabet = 256;

        vector<int> p(n), c(n), cnt(max(alphabet, n), 0);

        for (int i = 0; i < n; i++){
            cnt[s[i]]++;
        }

        for (int i = 1; i < alphabet; i++){
            cnt[i] += cnt[i-1];
        }

        for (int i = 0; i < n; i++){
            p[--cnt[s[i]]] = i;
        }

        c[p[0]] = 0;
        int classes = 1;

        for (int i = 1; i < n; i++){
            if (s[p[i]] != s[p[i-1]]){
                classes++;
            }
            c[p[i]] = classes - 1;
        }

        vector<int> pn(n), cn(n);

        for(int h = 0; (1 << h) < n; h++){
            for (int i = 0; i < n; i++){
                pn[i] = p[i] - (1<<h);
                if (pn[i] < 0) pn[i] += n;
            }

            fill(cnt.begin(), cnt.begin() + classes, 0);

            for (int i = 0; i < n; i++){
                cnt[c[pn[i]]]++;
            }

            for (int i = 1; i < n; i++){
                cnt[i] += cnt[i-1];
            }

            for (int i = n-1; i >=0; i--){
                p[--cnt[c[pn[i]]]] = pn[i];
            }

            cn[p[0]] = 0;
            classes = 1;

            for (int i = 1; i < n; i++){
                pair<int, int> curr = {c[p[i]], c[(p[i] + (1 << h)) % n]};
                pair<int, int> prev = {c[p[i-1]], c[(p[i-1] + (1 << h)) % n]};
                if (curr != prev){
                    classes++;
                }
                cn[p[i]] = classes - 1;
            }

            c.swap(cn);
        }

        return p;
    }


    vector<int> suffix_arr(string s){
        vector<int> sorted = sort_cyclic_shifts(s);
        while(s[*sorted.begin()] == '$'){
            sorted.erase(sorted.begin());
        }
        return sorted;
    }


    bool multiple_test_case = false;
    bool is_interactive = false;

    void solve(){
        int n; cin >> n;

        str s_front = "";
        str s_back = "";

        vstr words(n);

        For(i, n){
            str tmp; cin >> tmp;
            words[i] = tmp;
            s_front += tmp;
            s_front += "$";
            reverse(all(tmp));
            s_back += tmp;
            s_back += "$";
        }

        vvi v_words(n, vi());

        For(i, n){
            For(j, words[i].size()){
                v_words[i].push_back(words[i][j]);
            }
        }

        vi v_front;
        vi v_back;

        For(i, s_front.size()){
            v_front.push_back(s_front[i]);
            v_back.push_back(s_back[i]);
        }

        vi suff_front = suffix_arr(s_front);
        vi suff_back = suffix_arr(s_back);

        debug(suff_front);
        debug(suff_back);
        debug(s_front);
        debug(v_front);

        int res = 0;

        

        For(i, n){
            vi curr = v_words[i];

            vi front(curr.size()-1);
            vi back(curr.size()-1);

            auto beg = suff_front.begin();
            auto end = suff_front.end();

            For(j, curr.size()-1){
                

                auto cmp = [&](int a, int b) {return v_front[a+j] < v_front[b+j];};

                auto tbeg = lower_bound(beg, end, curr[j], cmp);
                auto tend = upper_bound(beg, end, curr[j], cmp);

                j++;
                debug(distance(suff_front.begin(), lower_bound(tbeg, tend, 36, cmp)));
                debug(distance(suff_front.begin(), upper_bound(tbeg, tend, 36, cmp)));
                front[j-1] = distance(lower_bound(tbeg, tend, 36, cmp), upper_bound(tbeg, tend, 36, cmp));
                j--;
                beg = tbeg;
                end = tend;
                debug(words[i]);
                debug(j);
                debug(distance(suff_front.begin(), beg));
                debug(distance(suff_front.begin(), end));
                debug(front[j]);

            }

            reverse(all(curr));

            beg = suff_back.begin();
            end = suff_back.end();

            For(j, curr.size()-1){

                auto cmp = [&](int a, int b) {return v_back[a+j] < v_back[b+j];};

                auto tbeg = lower_bound(beg, end, curr[j], cmp);
                auto tend = upper_bound(beg, end, curr[j], cmp);

                j++;
                back[j-1] = distance(lower_bound(tbeg, tend, 36, cmp), upper_bound(tbeg, tend, 36, cmp));
                j--;
                beg = tbeg;
                end = tend;

                debug(words[i]);
                debug(j);
                debug(distance(suff_back.begin(), beg));
                debug(distance(suff_back.begin(), end));
                debug(back[j]);

            }

            For(j, curr.size()-1){
                res += front[j] * back[back.size() - j - 1];
            }
        }

        cout << res << '\n';

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
