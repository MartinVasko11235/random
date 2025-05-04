use std::io::stdin;

mod temp;
macro_rules! read {
    ( $( $arg:tt ),* ) => {
        let mut line = String::new();
        stdin().read_line(&mut line).expect("Failed to read line");
        let mut iter = line.trim().split_whitespace();

        $(
            read!(@parse iter, $arg);
        )*
    };

    (@parse $iter:ident, $var:ident) => {
        $var = $iter
            .next()
            .expect(concat!("Missing input for ", stringify!($var)))
            .parse::<i32>()
            .expect(concat!("Failed to parse ", stringify!($var)));
    };

    (@parse $iter:ident, ($var:ident : $t:ty)) => {
        $var = $iter
            .next()
            .expect(concat!("Missing input for ", stringify!($var)))
            .parse::<$t>()
            .expect(concat!("Failed to parse ", stringify!($var)));
    };
}


macro_rules! read_vec {
    ( $vec:ident ) => {
        let mut line = String::new();
        stdin().read_line(&mut line).expect("Failed to read line");
        $vec = line
            .trim()
            .split_whitespace()
            .map(|s| s.parse::<i32>().expect("Failed to parse"))
            .collect::<Vec<i32>>();
    };

    ( $vec:ident, $t:ty ) => {
        let mut line = String::new();
        stdin().read_line(&mut line).expect("Failed to read line");
        $vec = line
            .trim()
            .split_whitespace()
            .map(|s| s.parse::<$t>().expect("Failed to parse"))
            .collect::<Vec<$t>>();
    };
}


macro_rules! new {
    ( $var:ident = $val:expr ) => {
        let mut $var = $val;
    };

    ( $var:ident : $t:ty) => {
        let mut $var: $t;
    };

    ( $var:ident : $t:ty = $val:expr ) => {
        let mut $var: $t = $val;
    };

    ($( $arg:tt ),*) => {
        $(
            new!(@parse $arg);
        )*
    };

    (@parse $var:ident) => {
        let mut $var: i32 = 0;
    };

    (@parse ($var:ident : $t:ty)) => {
        let mut $var: $t;
    };

    (@parse ($var:ident = $val:expr)) => {
        let mut $var = $val;
    };

    (@parse ($var:ident : $t:ty = $val:expr)) => {
        let mut $var: $t = $val;
    };

}


// macro_rules! new_read{
//     ($( $arg:tt ),*) => {
//         $(
//             new!($arg);
//             read!($arg);
//         )*
//     }
// }

#[allow(unused_mut)]
#[allow(dead_code)]
fn main() {
    new!(t = 1);
    // read!(t);
    for _ in 0..t {
        solve();
    }
}

#[allow(unused_mut)]
#[allow(unused_assignments)]
#[allow(unused_variables)]
fn solve() {
    new!(n, p);
    read!(n, p);

    let mut adj: Vec<Vec<i32>> = vec![vec![]; n as usize];

    for _ in 0..n-1 {
        new!(u, v);
        read!(u, v);
        u -= 1;
        v -= 1;
        adj[u as usize].push(v);
        adj[v as usize].push(u);
    }

    let mut is_mafia = vec![false; n as usize];

    new!(x);
    for _ in 0..p {
        read!(x);
        x -= 1;
        is_mafia[x as usize] = true;
    }

    let mut res = 0;
    dfs(0, -1, &mut res, &adj, &is_mafia);
    println!("{}", res);


}

fn dfs(v: i32, p: i32, res: &mut i32, adj: &Vec<Vec<i32>>, is_mafia: &Vec<bool>) -> i32 {
    let mut count = if is_mafia[v as usize] { 1 } else { 0 };
    for &u in &adj[v as usize] {
        if u != p {
            count += dfs(u, v, res, adj, is_mafia);
        }
    }
    if count > 1 {
        *res += 1;
        return 0;
    }
    count
}

fn asd(a: i32, b: i32) -> i32 {
    if a > b {
        return a;
    }
    b
}

