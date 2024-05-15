#include <bits/stdc++.h>

using namespace std;

typedef long long  ll;

typedef pair<int, int> pii;

typedef vector<int> vi;

struct student{
    int k, s;
    int tin;
    int i;

    student(int k, int s, int tin, int i) : k(k), s(s), tin(tin), i(i){};
};

struct cmp{

    bool operator()(student a, student b) const{
        if (a.k == b.k){
            return a.tin < b.tin;
        }

        return a.k > b.k;
    }
};


struct cmp2{

    bool operator()(student a, student b) const{
        return a.tin < b.tin;
    }
};


void solve(){
    int n, D;
    cin >> n >> D;



    unordered_set<int> had_food;

    priority_queue<student, vector<student>, cmp> in_queue;

    priority_queue<student, vector<student>, cmp2> eating;


    for(int i = 0; i < n; i++){
        int k, s;
        cin >> k >> s;
        student temp(k, s, 0, i);

        in_queue.push(temp);
    }
    

    for(int time = 0; time < D; time++){

        if (in_queue.empty()) continue;

        student served = in_queue.top();
        in_queue.pop();

        had_food.insert(served.i);

        if (had_food.size() == n){
            cout << time << '\n';
            return;
        }

        served.tin = time + served.s;

        while(eating.top().tin == time){
            in_queue.push(eating.top());
            eating.pop();
        }


    }

    cout << "-1\n";
}

int main(){

    int tt; cin >> tt;

    while (tt--) solve();

    return 0;
}