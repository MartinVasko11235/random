#pragma once
#include <string>
#include <memory>
#include <set>
#include "expr.hpp"

enum State {
    None,
};


class Parser{
    int idx;
    std::string file_content;
    std::vector<std::string> tokens;
    std::set<std::string> token_ends = {" ", "\n", "\t", "(", ")", "{", "}", ";", ":", ",", "[", "]", "*", "&", "+", "-", "/", "%", "<", ">", "=", "!", "|", "^", "~", "."};
    std::string current_token;
    std::set<std::string> function_names;
    std::set<std::string> struct_names;
    std::set<std::string> variable_names;
    void lex();
    void merge_tokens();
    bool _is_token_end(char c);
    bool _is_function_name(std::string name);
    bool _is_struct_name(std::string name);
    bool _is_variable_name(std::string name);
public:
    Parser(std::string file_name);
    std::unique_ptr<File> parse_file();
    std::unique_ptr<Block> parse_block();
    std::unique_ptr<StructDef> parse_struct_def();
    std::unique_ptr<FunctionDef> parse_function_def();
    std::unique_ptr<Type> parse_type();
    std::unique_ptr<Expr> parse_line();
    std::unique_ptr<Variable> parse_variable();
};