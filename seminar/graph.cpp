#include <bits/stdc++.h>

using namespace std;

class Graph{
	
	private:

		vector<vector<int>> data;

		void bfs(int a, vector<int>& dist){

			queue<int> q;

			q.push(a);

			while (!q.empty())
			{
				int node = q.front();
				q.pop();

				vector<int> neighbours_of_node = neighbours(node);

				for (int i = 0; i < neighbours_of_node.size(); i++)
				{
					if (neighbours_of_node[i] != -1) continue;

					dist[neighbours_of_node[i]] = dist[node] + 1;

					q.push(neighbours_of_node[i]);
				}
				
			}
			
		}

		void bfs(int a, vector<int>& dist, vector<int>& parent){

			queue<int> q;

			q.push(a);

			while (!q.empty())
			{
				int node = q.front();
				q.pop();

				vector<int> neighbours_of_node = neighbours(node);

				for (int i = 0; i < neighbours_of_node.size(); i++)
				{
					if (neighbours_of_node[i] != -1) continue;

					dist[neighbours_of_node[i]] = dist[node] + 1;

					parent[neighbours_of_node[i]] = node;

					q.push(neighbours_of_node[i]);
				}
				
			}
			
		}

	
	
	public:

		Graph(int n){
			data.resize(n);
		}

		Graph(int n, vector<pair<int, int>> edges){

			data.resize(n);

			for (int i = 0; i < edges.size(); i++)
			{
				add_edge(edges[i].first, edges[i].second);
			}
			
		}

		int no_of_nodes(){
			return no_of_nodes();
		}

		void add_edge(int a, int b){
			data[a].push_back(b);
			data[b].push_back(a);
		}

		void remove_edge(int a, int b){

			for (int i = 0; i < data[a].size(); i++)
			{
				if(data[a][i] == b){
					data[a].erase(data[a].begin() + i);
				}
			}

			for (int i = 0; i < data[b].size(); i++)
			{
				if(data[b][i] == a){
					data[b].erase(data[b].begin() + i);
				}
			}
			
		}

		int degree(int a){
			return data[a].size();
		}

		vector<int> neighbours(int a){
			return data[a];
		}
		
		int is_connected(){

			vector<int> dist(no_of_nodes(), -1);

			bfs(0, dist);

			for (int i = 0; i < dist.size(); i++)
			{
				if (dist[i] == -1) return false;
			}
			
			return true;
			
		}

		int no_of_components(){

			int res = 0;

			vector<int> dist(no_of_nodes(), -1);

			for (int i = 0; i < no_of_nodes(); i++)
			{
				if(dist[i] == -1){
					res++;
					bfs(i, dist);
				}
			}
			return res;
		}

		int dist(int a, int b){

			vector<int> dist(no_of_nodes(), -1);

			bfs(a, dist);

			return dist[b];
		}

		vector<int> shortest_path(int a, int b){
			
			vector<int> dist(no_of_nodes(), -1);

			vector<int> parent(no_of_nodes(), -1);

			bfs(a, dist, parent);

			if (dist[b] == -1) return vector<int>();

			int curr = b;

			vector<int> r_path;

			r_path.push_back(b);

			while (curr != a)
			{
				curr = parent[curr];
				r_path.push_back(curr);
			}

			vector<int> path;

			for(int i = r_path.size() - 1; i>=0; i--){
				path.push_back(r_path[i]);
			}

			return path;
		}

};


int main(){

	Graph graph(5);

	graph.add_edge(1, 4);

	cout << graph.degree(1) << "\n";

}