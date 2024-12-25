#pragma once
#include <memory>
#include <string>
#include <vector>

struct Expr {};

struct Block : public Expr {
    std::vector<std::unique_ptr<Expr>> exprs;
    Block(std::vector<std::unique_ptr<Expr>> exprs) : exprs(std::move(exprs)) {};
};

struct BinOp : public Expr {
    std::string op;
    std::unique_ptr<Expr> left;
    std::unique_ptr<Expr> right;
    BinOp(std::string op, std::unique_ptr<Expr> left, std::unique_ptr<Expr> right) : op(op), left(std::move(left)), right(std::move(right)) {};
};

struct Int : public Expr {
    int size;
    long long value;
    Int(long long value) : size(32), value(value) {};
    Int(int size, long long value) : size(size), value(value) {};
};

struct Type : public Expr {
    std::string name;
    std::vector<std::unique_ptr<Type>> types;
    Type(std::string name, std::vector<std::unique_ptr<Type>> types) : name(name), types(types) {};
};

struct Value : public Expr {
    std::unique_ptr<Type> type;
    std::unique_ptr<Expr> value;
    Value(std::unique_ptr<Type> type, std::unique_ptr<Expr> value) : type(std::move(type)), value(std::move(value)) {};
};

struct Variable : public Expr {
    std::unique_ptr<Type> type;
    std::string name;
    Variable(std::unique_ptr<Type> type, std::string name) : type(std::move(type)), name(name) {};
};

struct Assign : public Expr {
    std::string name;
    std::unique_ptr<Value> value;
    Assign(std::string name, std::unique_ptr<Value> value) : name(name), value(std::move(value)) {};
};

struct Struct : public Expr {
    std::string name;
    std::vector<std::unique_ptr<Variable>> fields;
    Struct(std::string name, std::vector<std::unique_ptr<Variable>> fields) : name(name), fields(std::move(fields)) {};
};

struct FunctionDef : public Expr {
    std::unique_ptr<Type> return_type;
    std::string name;
    std::vector<std::unique_ptr<Variable>> args;
    std::unique_ptr<Block> body;
    FunctionDef(std::unique_ptr<Type> return_type, std::string name, std::vector<std::unique_ptr<Variable>> args,
                std::unique_ptr<Block> body) : return_type(std::move(return_type)), name(name), args(std::move(args)), body(std::move(body)) {};
};

struct FunctionCall : public Expr {
    std::string name;
    std::vector<std::unique_ptr<Variable>> args;
    FunctionCall(std::string name, std::vector<std::unique_ptr<Variable>> args) : name(name), args(std::move(args)) {};
};

struct Array : public Expr {
    int size;
    std::unique_ptr<Type> type;
    std::vector<std::unique_ptr<Value>> value;
    Array(int size, std::unique_ptr<Type> type, std::vector<std::unique_ptr<Value>> value) : size(size), type(std::move(type)), value(std::move(value)) {};
};

struct Index : public Expr {
    std::unique_ptr<Struct> struct_name;
    int index;
    Index(std::unique_ptr<Struct> struct_name, int index) : struct_name(std::move(struct_name)), index(index) {};
    Index(std::unique_ptr<Struct> stuct_name, std::string index) : struct_name(std::move(struct_name)) {
        for (int i = 0; i < struct_name->fields.size(); i++) {
            if (struct_name->fields[i]->name == index) {
                this->index = i;
                return;
            }
        }
    };
};

