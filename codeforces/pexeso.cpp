#include <bits/stdc++.h>

using namespace std;

typedef vector<int> vi;

typedef long long ll;

typedef pair<int, int> pii;

vi tree;
vi lazy;

void push(int v)
{
    tree[2 * v] += lazy[v];
    lazy[2 * v] += lazy[v];
    tree[2 * v + 1] += lazy[v];
    lazy[2 * v + 1] += lazy[v];
    lazy[v] = 0;
}

int get_max(int v, int tl, int tr, int l, int r)
{
    if (l > r)
        return 0;
    if (tl == l && tr == r)
        return tree[v];

    push(v);

    int tm = (tl + tr) / 2;

    return max(get_max(2 * v, tl, tm, l, min(r, tm)), get_max(2 * v + 1, tm + 1, tr, max(l, tm + 1), r));
}

void update(int v, int tl, int tr, int l, int r, int to_add)
{
    if (l > r)
        return;
    if (tl == l && tr == r)
    {
        tree[v] += to_add;
        lazy[v] += to_add;
        return;
    };

    push(v);

    int tm = (tl + tr) / 2;

    update(2 * v, tl, tm, l, min(tm, r), to_add);
    update(2 * v + 1, tm + 1, tr, max(l, tm + 1), r, to_add);

    tree[v] = max(tree[2 * v], tree[2 * v + 1]);
}

int main()
{

    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    int n;
    cin >> n;

    vi a(n);

    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }

    map<int, vi> obr;
    map<int, int> pocet;

    for (int i = 0; i < n; i++)
    {
        if (obr.find(a[i]) == obr.end())
        {
            vector<int> temp;
            temp.emplace_back(i);
            obr.insert({a[i], temp});
            pocet.insert({a[i], 0});
            continue;
        }

        obr[a[i]].emplace_back(i);
    }

    tree.assign(4 * n, 0);
    lazy.assign(4 * n, 0);

    for (auto i = obr.begin(); i != obr.end(); i++)
    {

        (*i).second.emplace_back(n);
        if ((*i).second.size() < 3)
            continue;
        update(1, 0, n - 1, (*i).second[1], (*i).second[2] - 1, 1);
    }

    int curr_max = get_max(1, 0, n - 1, 0, n - 1);

    for (int i = 1; i < n; i++)
    {
        if (i == n - 1)
            continue;
        if (pocet[a[i - 1]] >= obr[a[i - 1]].size() - 2)
            continue;
        update(1, 0, n - 1, obr[a[i - 1]][pocet[a[i - 1]] + 1], obr[a[i - 1]][pocet[a[i - 1]] + 2] - 1, -1);
        pocet[a[i - 1]]++;
        if (pocet[a[i - 1]] >= obr[a[i - 1]].size() - 2)
            continue;
        update(1, 0, n - 1, obr[a[i - 1]][pocet[a[i - 1]] + 1], obr[a[i - 1]][pocet[a[i - 1]] + 2] - 1, 1);

        // cout << tree[1] << '\n';

        curr_max = max(curr_max, get_max(1, 0, n - 1, i + 1, n - 1));
    }

    cout << curr_max << '\n';

    return 0;
}