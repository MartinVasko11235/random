// Problem: A. My First Sorting Problem
// Contest: Codeforces - Codeforces Round 944 (Div. 4)
// URL: https://codeforces.com/problemset/problem/1971/A
// Memory Limit: 256 MB
// Time Limit: 1000 ms
// 
// Powered by CP Editor (https://cpeditor.org)

#include <bits/stdc++.h>

using namespace std;

int main(){
	
	
	int tt; cin >> tt;
	
	while (tt--){
		int a, b;
		cin >> a >> b;
		
		cout << min(a, b) << ' ' << max(a, b ) << '\n';
	}
	
	return 0;
}
