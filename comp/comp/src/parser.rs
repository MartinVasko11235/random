use std::vec;

use crate::expr::Expr;
pub struct Parser {
    idx: usize,
    tokens: Vec<String>,
}

impl Parser {
    pub fn new(input: String) -> Self {
        let mut tokens = vec![];
        let mut curr = String::new();
        for chr in input.chars() {
            match chr {
                ' ' | '\n' | '\t' => {
                    if !curr.is_empty() {
                        tokens.push(curr);
                        curr = String::new();
                    }
                }
                '(' | ')' | '{' | '}' | ';' | ',' | '!' | '%' | '&' | '*' | '+' | '-' | '/'
                | '<' | '=' | '>' | '|' | '^' | '~' | ':' => {
                    if !curr.is_empty() {
                        tokens.push(curr);
                        curr = String::new();
                    }
                    tokens.push(chr.to_string());
                }
                _ => curr.push(chr),
            }
        }

        let mut merged_tokens = vec![];

        merged_tokens.push(tokens[0].clone());

        for i in 1..tokens.len() {
            if tokens[i] == "=" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("==".to_string());
            } else if tokens[i] == "=" && tokens[i - 1] == "<" {
                merged_tokens.pop();
                merged_tokens.push("<=".to_string());
            } else if tokens[i] == "=" && tokens[i - 1] == ">" {
                merged_tokens.pop();
                merged_tokens.push(">=".to_string());
            } else if tokens[i] == "=" && tokens[i - 1] == "!" {
                merged_tokens.pop();
                merged_tokens.push("!=".to_string());
            } else if tokens[i] == "&" && tokens[i - 1] == "&" {
                merged_tokens.pop();
                merged_tokens.push("&&".to_string());
            } else if tokens[i] == "|" && tokens[i - 1] == "|" {
                merged_tokens.pop();
                merged_tokens.push("||".to_string());
            } else if tokens[i] == "+" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("+=".to_string());
            } else if tokens[i] == "-" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("-=".to_string());
            } else if tokens[i] == "*" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("*=".to_string());
            } else if tokens[i] == "/" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("/=".to_string());
            } else if tokens[i] == "%" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("%=".to_string());
            } else if tokens[i] == "&" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("&=".to_string());
            } else if tokens[i] == "|" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("|=".to_string());
            } else if tokens[i] == "^" && tokens[i - 1] == "=" {
                merged_tokens.pop();
                merged_tokens.push("^=".to_string());
            } else if tokens[i] == ">" && tokens[i - 1] == "-" {
                merged_tokens.pop();
                merged_tokens.push("->".to_string());
            } else {
                merged_tokens.push(tokens[i - 1].clone());
            }
        }

        Parser {
            idx: 0,
            tokens: merged_tokens,
        }
    }

    pub fn parse(&mut self) -> Result<Vec<Box<Expr>>, &'static str> {
        let mut exprs = Vec::new();
        while self.idx < self.tokens.len() {
            match self.tokens[self.idx].as_str() {
                "fn" => {
                    self.idx += 1;
                    let expr = self.parse_fn()?;
                    exprs.push(expr);
                }
                _ => {
                    self.idx += 1;
                }
            }
        }
        Ok(exprs)
    }

    fn parse_fn(&mut self) -> Result<Box<Expr>, &'static str> {
        let name = self.tokens[self.idx].clone();
        self.idx += 1;
        let mut args = Vec::new();
        if self.tokens[self.idx] != "(" {
            return Err("Expected (");
        }
        self.idx += 1;
        while self.tokens[self.idx] != ")" {
            let arg_name = self.tokens[self.idx].clone();
            self.idx += 1;
            if self.tokens[self.idx] != ":" {
                return Err("Expected :");
            }
            self.idx += 1;
            let arg_type = self.parse_type()?;
            args.push(arg_type);
            if self.tokens[self.idx] == "," {
                self.idx += 1;
            }
        }
        self.idx += 1;
        if self.tokens[self.idx] != "->" {
            return Err("Expected ->");
        }
        self.idx += 1;
        let ret_expr = self.parse_expr()?;
        if self.tokens[self.idx] != ":" {
            return Err("Expected :");
        }
        self.idx += 1;
        let ret_type = self.parse_type()?;
        if self.tokens[self.idx] != "{" {
            return Err("Expected {");
        }
        self.idx += 1;
        let body = self.parse_body()?;


        Ok(Expr::new_function_def(
            name,
            ret_type,
            ret_expr,
            args,
            body,
        ))

    }

    fn parse_body(&mut self) -> Result<Vec<Box<Expr>>, &'static str> {
        let mut body = Vec::new();
        while self.tokens[self.idx] != "}" {
            let expr = self.parse_expr()?;
            body.push(expr);
            if self.tokens[self.idx] == ";" {
                self.idx += 1;
            }
        }
        self.idx += 1;
        Ok(body)
    }

    fn parse_type(&mut self) -> Result<Box<Expr>, &'static str> {
        let type_name = self.tokens[self.idx].clone();
        self.idx += 1;
        let mut subtypes = Vec::new();
        if self.tokens[self.idx] == "<" {
            self.idx += 1;
            while self.tokens[self.idx] != ">" {
                let subtype = self.parse_type()?;
                subtypes.push(subtype);
                if self.tokens[self.idx] == "," {
                    self.idx += 1;
                }
            }
            self.idx += 1;
        }
        Ok(Expr::new_type(type_name, subtypes))
    }

    fn parse_expr(&mut self) -> Result<Box<Expr>, &'static str> {
        todo!()
    }
}
