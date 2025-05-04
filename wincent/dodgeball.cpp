// #pragma GCC optimize ("Ofast")
// #pragma GCC target ("avx2")

#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

template <typename T>
using ordered_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;

#define int long long

#define ALL(a) a.begin(), a.end()
#define FOR(i, n) for (int(i) = 0; (i) < (n); (i)++)
#define RFOR(i, n) for (int(i) = (n) - 1; (i) >= 0; i--)
#define LOOP(i, a, b) for (int(i) = (a); (i) < (b); (i)++)
#define RLOOP(i, a, b) for (int(i) = (b) - 1; (i) >= (a); (i)--)
#define EACH(i, v) for (auto &i : v)

#define EB emplace_back
#define SZ size()

template <typename T>
using uset = unordered_set<T>;
template <typename T, typename U>
using umap = unordered_map<T, U>;
template <typename T>
using vec = vector<T>;
template <typename T>
using priorq = priority_queue<T>;
template <typename T>
using rpriorq = priority_queue<T, vec<T>, greater<T>>;

using pii = pair<int, int>;
using str = string;
using vi = vector<int>;
using vb = vector<bool>;
using vstr = vector<string>;
using vvi = vector<vector<int>>;
using vpii = vector<pii>;
using vvpii = vector<vector<pii>>;

const int mod = 1000000007;
// const int mod = 998244353;
const int inf = LONG_LONG_MAX / 2;
// const int inf = INT_MAX/2;

const string yes = "YES";
const string no = "NO";

template <typename T>
ostream &operator<<(ostream &os, const vec<T> &a)
{
    FOR(i, a.size())
    {
        if (i < a.size() - 1)
            os << a[i] << ' ';
        else
            os << a[i];
    }
    return os;
}

template <typename T>
void print(T t) { cout << t << '\n'; }
template <typename T, typename... Args>
void print(T t, Args... args)
{
    cout << t << ' ';
    print(args...);
}

#ifdef LOCAL
#define debug(a) cerr << #a << " = " << a << '\n';
#else
#define debug(a)
#endif

struct node
{
    int x, y, id;

    bool operator<(const node &a) const
    {
        if (x == a.x)
            return y < a.y;
        return x < a.x;
    }
};

void solve()
{
    unordered_map<int, set<node>> N_S;
    unordered_map<int, set<node>> E_W;
    unordered_map<int, set<node>> NE_SW;
    unordered_map<int, set<node>> NW_SE;

    int n;
    cin >> n;

    vec<node> players(n);

    FOR(i, n)
    {
        int x, y;
        cin >> x >> y;
        node p = {x, y, i};
        players[i] = p;
        N_S[x].insert(p);
        E_W[y].insert(p);
        NE_SW[x - y].insert(p);
        NW_SE[x + y].insert(p);
    }

    vec<unordered_map<int, set<node>>> maps = {N_S, NE_SW, E_W, NW_SE};

    string direction;
    cin >> direction;
    int last_palyer;
    cin >> last_palyer;
    last_palyer--;

    int dir_idx;

    if (direction == "N")
        dir_idx = 0;
    else if (direction == "NE")
        dir_idx = 1;
    else if (direction == "E")
        dir_idx = 2;
    else if (direction == "SE")
        dir_idx = 3;
    else if (direction == "S")
        dir_idx = 4;
    else if (direction == "SW")
        dir_idx = 5;
    else if (direction == "W")
        dir_idx = 6;
    else
        dir_idx = 7;

    int res = 0;

    auto erase_player = [&](node &p)
    {
        maps[0][p.x].erase(p);
        maps[1][p.x - p.y].erase(p);
        maps[2][p.y].erase(p);
        maps[3][p.x + p.y].erase(p);
    };

    while (true)
    {
        bool found = false;
        FOR(_, 8)
        {
            dir_idx = (dir_idx + 1) % 8;

            bool is_less = dir_idx > 3;
            int map_idx = dir_idx % 4;
            node &curr_player = players[last_palyer];
            int player_idx;
            if (map_idx == 0)
                player_idx = curr_player.x;
            else if (map_idx == 1)
                player_idx = curr_player.x - curr_player.y;
            else if (map_idx == 2)
                player_idx = curr_player.y;
            else
                player_idx = curr_player.x + curr_player.y;

            auto &curr_map = maps[map_idx];

            auto it = curr_map[player_idx].find(curr_player);
            if (it == curr_map[player_idx].end())
                continue;
            if (is_less)
            {

                if (it == curr_map[player_idx].begin())
                    continue;
                it--;
                last_palyer = it->id;
                erase_player(curr_player);
                res++;
                found = true;
                break;
            }
            else
            {
                it++;
                if (it == curr_map[player_idx].end())
                    continue;
                last_palyer = it->id;
                erase_player(curr_player);
                res++;
                found = true;
                break;
            }
        }

        if (!found)
            break;
        dir_idx = (dir_idx + 4) % 8;
    }

    print(res, last_palyer + 1);
}
int32_t main()
{

    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);

    freopen("in.txt", "r", stdin);
    freopen("out.txt", "w", stdout);

    int _t = 1;

    cin >> _t;

    while (_t--)
        solve();

    return 0;
}