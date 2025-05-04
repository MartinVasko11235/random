use codegen::Codegen;
use parser::Parser;

mod codegen;
mod expr;
mod parser;
mod test;

fn compile(input: &str) -> String {
    let mut parser = Parser::new(input.to_string());
    let exprs = parser.parse().unwrap();
    let mut codegen = Codegen::new(exprs);
    codegen.generate_llvm().unwrap()
}

fn main() {
    println!("Hello, world!");
}
