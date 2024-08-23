#![allow(unused)]
use std::io::{stdin, Read};

fn read_int() -> usize{
    let mut input = String::new();
    stdin().read_line(&mut input).unwrap();    
    return input.trim().parse().unwrap(); 
}

fn read_vec() -> Vec<usize>{
    let mut input = String::new();
    stdin().read_line(&mut input).unwrap();
    return input.trim().split_whitespace().map(|x| x.parse().unwrap()).collect();
}

fn read_string() -> Vec<char>{
    let mut input = String::new();
    stdin().read_line(&mut input).unwrap();
    return input.chars().collect();
}

fn to_string(arr : Vec<char>) -> String{
    return arr.iter().collect::<String>();
}

struct Pii(usize, usize);


fn solve(){

}
fn main() {
    let t = read_int();
    for i in 0..t {solve();}
}

