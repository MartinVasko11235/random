#include <algorithm>
#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::vector;

int main() {
	int n = 50;  // adjust n as you please
	vector<char> str;
	for (int i = 0; i < n; i++) { str.push_back('a' + rand() % 26); }

	for (char c : str) { cout << c; }
	cout << '\n';

	vector<int> suffs(n);
	for (int i = 0; i < n; i++) { suffs[i] = i; }
	std::sort(suffs.begin(), suffs.end(), [&](int a, int b) {
		vector<char> a_vec(str.begin() + a, str.end());
		vector<char> b_vec(str.begin() + b, str.end());
		return a_vec < b_vec;
	});

	for (int i = 0; i < n; i++) { cout << suffs[i] << " \n"[i == n-1]; }
}