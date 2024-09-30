pub mod lib {

    trait Asd {
        fn new() -> Self;
        fn idk(&self) -> ();
    }

    #[derive(Debug)]
    struct Idk {
        idk1: i32,
        idk2: i32,
        upper_bound: i32,
    }

    impl Iterator for Idk {
        type Item = i32;

        fn next(&mut self) -> Option<Self::Item> {
            (self.idk1, self.idk2) = (self.idk1 + self.idk2, self.idk1);
            if self.idk1 > self.upper_bound {
                return None;
            }
            Some(self.idk1)
        }
    }

    impl Idk {
        fn new() -> Self {
            return Idk {
                idk1: 0,
                idk2: 1,
                upper_bound: 100,
            };
        }
    }

    impl Asd for Idk {
        fn new() -> Self {
            return Idk {
                idk1: 0,
                idk2: 1,
                upper_bound: 200,
            };
        }
        fn idk(&self) -> () {
            println!("neviem {} {}", self.idk1, self.idk2);
        }
    }

    use std::fs;
    use std::process;
    pub fn run(config: Config) {
        let neviem: Idk = Asd::new();
        neviem.idk();
        let neviem2: Idk = Idk::new();
        neviem2.idk();

        for i in neviem.into_iter() {
            println!("{}", i);
        }

        for i in neviem2.into_iter() {
            println!("{}", i);
        }

        let file = fs::read_to_string(&config.file_name).unwrap_or_else(|err| {
            println!("error reading file: {err}");
            process::exit(1);
        });

        for line in search(&config.query, &file) {
            println!("{line}");
        }
    }

    pub fn search<'a>(query: &str, contents: &'a str) -> Vec<&'a str> {
        let mut results = Vec::new();

        for line in contents.lines() {
            if line.contains(query) {
                results.push(line);
            }
        }

        return results;
    }

    pub struct Config {
        query: String,
        file_name: String,
    }

    impl Config {
        pub fn new(args: &[String]) -> Result<Config, &'static str> {
            if args.len() < 3 {
                return Err("not enough arguments");
            }
            let query = args[1].clone();
            let file_name = args[2].clone();

            return Ok(Config { query, file_name });
        }

        pub fn update_query(&mut self, query: String) {
            self.query = query;
        }
    }
}
