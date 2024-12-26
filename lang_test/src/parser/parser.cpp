#include "parser.hpp"
#include <fstream>

Parser::Parser(std::string file_name) : idx(0){
    std::ifstream file(file_name);
    std::string line;
    while (std::getline(file, line)) {
        file_content += line + "\n";
    }

    file.close();

    lex();

    merge_tokens();
    
}

bool Parser::_is_token_end(char c){
    return token_ends.find(std::string(1, c)) != token_ends.end();
}

void Parser::lex(){
    for (int i = 0; i < file_content.size(); i++) {
        if (file_content[i] == '#') {
            while (file_content[i] != '\n') {
                i++;
            }
        }
        if (_is_token_end(file_content[i])) {
            tokens.push_back(current_token);
            current_token = "";
            if (file_content[i] != ' ' && file_content[i] != '\n' && file_content[i] != '\t') {
                current_token += file_content[i];
                tokens.push_back(current_token);
                current_token = "";
            }
        } 
        else {
            current_token += file_content[i];
        }
    }
}

void Parser::merge_tokens(){

    std::vector<std::string> merged_tokens;

    for (int i = 0; i < tokens.size(); i++) {
        if (tokens[i] == "-" && i + 1 < tokens.size() && tokens[i + 1] == ">") {
            merged_tokens.push_back("->");
            i++;
        }
        else if (tokens[i] == "+" && i + 1 < tokens.size() && tokens[i + 1] == "+") {
            merged_tokens.push_back("++");
            i++;
        }
        else if (tokens[i] == "-" && i + 1 < tokens.size() && tokens[i + 1] == "-") {
            merged_tokens.push_back("--");
            i++;
        }
        else if (tokens[i] == "*" && i + 1 < tokens.size() && tokens[i + 1] == "*") {
            merged_tokens.push_back("**");
            i++;
        }
        else if (tokens[i] == "=" && i + 1 < tokens.size() && tokens[i + 1] == "=") {
            merged_tokens.push_back("==");
            i++;
        }
        else if (tokens[i] == "!" && i + 1 < tokens.size() && tokens[i + 1] == "=") {
            merged_tokens.push_back("!=");
            i++;
        }
        else if (tokens[i] == "<" && i + 1 < tokens.size() && tokens[i + 1] == "=") {
            merged_tokens.push_back("<=");
            i++;
        }
        else if (tokens[i] == ">" && i + 1 < tokens.size() && tokens[i + 1] == "=") {
            merged_tokens.push_back(">=");
            i++;
        }
        else if (tokens[i] == "&" && i + 1 < tokens.size() && tokens[i + 1] == "&") {
            merged_tokens.push_back("&&");
            i++;
        }
        else if (tokens[i] == "|" && i + 1 < tokens.size() && tokens[i + 1] == "|") {
            merged_tokens.push_back("||");
            i++;
        }
        else {
            merged_tokens.push_back(tokens[i]);
        }
    }

    tokens = merged_tokens;
}

std::unique_ptr<File> Parser::parse_file(){
    std::unique_ptr<Block> block = std::make_unique<Block>();

    for (; idx < tokens.size(); idx++) {
        if (tokens[idx] == "fn") {
            block->exprs.push_back(parse_function_def());
        }
        else if (tokens[idx] == "struct") {
            block->exprs.push_back(parse_struct_def());
        }
        else if (tokens[idx] == "{") {
            block->exprs.push_back(parse_block());
        }
    }

    return std::make_unique<File>(block);
}


std::unique_ptr<Block> Parser::parse_block(){
    std::vector<std::unique_ptr<Expr>> exprs;

    if (tokens[idx] == "{") {
        idx++;
    }

    for (; idx < tokens.size(); idx++) {
        if (tokens[idx] == "}") {
            break;
        }

        if (tokens[idx] == "{") {
            exprs.push_back(parse_block());
        }
        
    }

    return std::make_unique<Block>(exprs);
}

std::unique_ptr<StructDef> Parser::parse_struct_def(){
    idx++;
    std::string struct_name = tokens[idx];
    idx++;
    std::vector<std::unique_ptr<Variable>> fields;
    if (tokens[idx] != "{") {
        throw std::runtime_error("Expected {");
    }
    idx++;
    while (tokens[idx] != "}") {
        if (tokens[idx] == ",") {
            idx++;
        }
        fields.push_back(parse_variable());
    }
    idx++;
    return std::make_unique<StructDef>(struct_name, fields);
}

std::unique_ptr<Type> Parser::parse_type(){
    std::string type_name = tokens[idx];
    idx++;
    std::vector<std::unique_ptr<Type>> subtypes;
    if (tokens[idx] == "<") {
        idx++;
        while (tokens[idx] != ">") {
            if (tokens[idx] == ",") {
                idx++;
            }
            subtypes.push_back(parse_type());
        }
        idx++;
    }
    return std::make_unique<Type>(type_name, subtypes);
}

std::unique_ptr<Expr> Parser::parse_line(){

}

std::unique_ptr<Variable> Parser::parse_variable(){
    std::unique_ptr<Type> type = parse_type();
    idx++;
    std::string name = tokens[idx];
    idx++;
    return std::make_unique<Variable>(type, name);
}

std::unique_ptr<FunctionDef> Parser::parse_function_def(){
    idx++;
    std::string function_name = tokens[idx];
    idx++;
    std::vector<std::unique_ptr<Variable>> args;
    
    if (tokens[idx] != "(") {
        throw std::runtime_error("Expected (");
    }
    idx++;
    while (tokens[idx] != ")") {
        if (tokens[idx] == ",") {
            idx++;
        }
        args.push_back(parse_variable());
    }
    idx++;

    std::unique_ptr<Type> return_type = nullptr;
    if (tokens[idx] == "->") {
        idx++;
        std::unique_ptr<Type> return_type = parse_type();
        idx++;
    }
    std::unique_ptr<Block> body = parse_block();

    return std::make_unique<FunctionDef>(return_type, function_name, args, body);
}
