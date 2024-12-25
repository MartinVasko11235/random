struct ahoj{
    int a, b, c;
    ahoj(int b){
        a = 22;
        this->b = b;
        c = 44;
    }
};

int main(){

    ahoj a(11);
    a.a = 11;
}