use asd::lib;
use asd::lib::Config;
use std::env;
use std::process;
fn main() {
    let args: Vec<String> = env::args().collect();

    let config = Config::new(&args).unwrap_or_else(|err| {
        println!("error parsing args: {err}");
        process::exit(1);
    });

    lib::run(config);
}
