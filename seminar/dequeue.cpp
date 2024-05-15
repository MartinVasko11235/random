#include <bits/stdc++.h>

using namespace std;

class Dequeue{

    private:

        struct Node{
            
            int data;
            Node* prev;
            Node* next;

            static Node* new_node(int data){
                Node* new_node = (Node*)malloc(sizeof(Node));
                new_node->data = data;
                new_node->prev = NULL;
                new_node->next = NULL;
                return new_node;
            }
        };

        Node* _head;
        Node* _tail;
        bool _is_empty;
    
    public:
        
        Dequeue(){
            _is_empty = true;
            _head = NULL;
            _tail = NULL;
        }

        bool is_empty(){
            return _is_empty;
        }

        void push_back(int x){
            if (_is_empty){
                Node* new_node = Node::new_node(x);
                _head = _tail = new_node;
                _is_empty = false;
                return;
            }
            Node* new_node = Node::new_node(x);
            new_node->prev = _tail;
            _tail->next = new_node;
            _tail = new_node;
        }

        void push_front(int x){
            if (_is_empty){
                Node* new_node = Node::new_node(x);
                _head = _tail = new_node;
                _is_empty = false;
                return;
            }
            Node* new_node = Node::new_node(x);
            new_node->next = _head;
            _head->prev = new_node;
            _head = new_node;
        }

        void pop_back(){
            if(_tail->prev == NULL){
                _is_empty = true;
                _head = NULL;
                _tail = NULL;
                return;
            }
            Node* temp = _tail;
            _tail = _tail->prev;
            _tail->next = NULL;
            free(temp);
        }

        void pop_front(){
            if(_head->next == NULL){
                _is_empty = true;
                _head = NULL;
                _tail = NULL;
                return;
            }
            Node* temp = _head;
            _head = _head->next;
            _head->prev = NULL;
            free(temp);
        }

        int front(){
            if(_is_empty){
                return -1;
            }
            return _head->data;
        }

        int back(){
            if(_is_empty){
                return -1;
            }
            return _tail->data;
        }

};


int main(){

    Dequeue deq;

    deq.push_back(1);
    deq.push_back(2);
    deq.push_front(4);
    deq.push_back(3);
    deq.pop_back();
    cout << deq.back() << endl;
    cout << deq.front() << endl;
    deq.pop_front();
    deq.pop_front();

    cout << deq.back() << endl;
    cout << deq.front() << endl;
}