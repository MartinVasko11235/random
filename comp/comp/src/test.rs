// use std::{result, vec};

// use crate::codegen::Codegen;
// use crate::expr::Expr;

// #[test]
// fn test_i32_main_ret_0() {
//     let input = vec![Box::new(Expr::FunctionDef {
//         fn_name: "main".to_string(),
//         ret_type: Box::new(Expr::Type {
//             type_name: "i32".to_string(),
//             subtypes: Vec::new(),
//         }),
//         args: Vec::new(),
//         body: vec![Box::new(Expr::Return {
//             value: Box::new(Expr::Int { value: 0 }),
//         })],
//     })];
//     let expected = "define i32 @main(){\nret i32 0\n}\n";
//     let result = Codegen::new(input).generate_llvm().unwrap();

//     assert_eq!(expected, result);
// }

// #[test]
// fn test_fn_add_a_b() {
//     let input = vec![Box::new(Expr::FunctionDef {
//         fn_name: "add".to_string(),
//         ret_type: Box::new(Expr::Type {
//             type_name: "i32".to_string(),
//             subtypes: Vec::new(),
//         }),
//         args: vec![
//             Box::new(Expr::Arg {
//                 arg_name: "a".to_string(),
//                 arg_type: Box::new(Expr::Type {
//                     type_name: "i32".to_string(),
//                     subtypes: Vec::new(),
//                 }),
//             }),
//             Box::new(Expr::Arg {
//                 arg_name: "b".to_string(),
//                 arg_type: Box::new(Expr::Type {
//                     type_name: "i32".to_string(),
//                     subtypes: Vec::new(),
//                 }),
//             }),
//         ],
//         body: vec![Box::new(Expr::Return {
//             value: Box::new(Expr::BinaryOp {
//                 op: "+".to_string(),
//                 lhs: Expr::new_arg("a".to_string(), Expr::new_i32()),
//                 rhs: Expr::new_arg("b".to_string(), Expr::new_i32()),
//             }),
//         })],
//     })];
//     let expected =
//         "define i32 @add(i32 %a, i32 %b){\n%temp.0 = add i32 %a, %b\nret i32 %temp.0\n}\n";
//     let result = Codegen::new(input).generate_llvm().unwrap();
//     assert_eq!(expected, result);
// }

// #[test]
// fn test_struct_def() {
//     let input = vec![Box::new(Expr::StructDef {
//         struct_name: "ads".to_string(),
//         fields: vec![
//             Box::new(Expr::Arg {
//                 arg_name: "a".to_string(),
//                 arg_type: Box::new(Expr::Type {
//                     type_name: "i32".to_string(),
//                     subtypes: Vec::new(),
//                 }),
//             }),
//             Box::new(Expr::Arg {
//                 arg_name: "b".to_string(),
//                 arg_type: Box::new(Expr::Type {
//                     type_name: "i64".to_string(),
//                     subtypes: Vec::new(),
//                 }),
//             }),
//         ],
//     })];
//     let expected = "%ads = type{i32, i64}\n";
//     let result = Codegen::new(input).generate_llvm().unwrap();
//     assert_eq!(expected, result);
// }

// // #[test]
// // fn test_if() {
// //     let input = vec![Box::new(Expr::FunctionDef {
// //         fn_name: "f".to_string(),
// //         ret_type: Box::new(Expr::Type {
// //             type_name: "i32".to_string(),
// //             subtypes: Vec::new(),
// //         }),
// //         args: vec![Box::new(Expr::Arg {
// //             arg_name: "a".to_string(),
// //             arg_type: Box::new(Expr::Type {
// //                 type_name: "i32".to_string(),
// //                 subtypes: Vec::new(),
// //             }),
// //         })],
// //         body: vec![
// //             Box::new(Expr::Let {
// //                 arg: Box::new(Expr::Arg {
// //                     arg_name: "ahoj".to_string(),
// //                     arg_type: Box::new(Expr::Type {
// //                         type_name: "i32".to_string(),
// //                         subtypes: Vec::new(),
// //                     }),
// //                 }),
// //             }),
// //             Box::new(Expr::If {
// //                 cond: Box::new(Expr::BinaryOp {
// //                     op: "==".to_string(),
// //                     lhs: Box::new(Expr::Var {
// //                         var_name: "a".to_string(),
// //                     }),
// //                     rhs: Box::new(Expr::Int { value: 33 }),
// //                 }),
// //                 then: vec![Box::new(Expr::Assign {
// //                     arg: Box::new(Expr::Arg {
// //                         arg_name: "ahoj".to_string(),
// //                         arg_type: Box::new(Expr::Type {
// //                             type_name: "i32".to_string(),
// //                             subtypes: Vec::new(),
// //                         }),
// //                     }),
// //                     value: Box::new(Expr::Int { value: 44 }),
// //                 })],
// //                 else_: vec![Box::new(Expr::Assign {
// //                     arg: Box::new(Expr::Arg {
// //                         arg_name: "ahoj".to_string(),
// //                         arg_type: Box::new(Expr::Type {
// //                             type_name: "i32".to_string(),
// //                             subtypes: Vec::new(),
// //                         }),
// //                     }),
// //                     value: Box::new(Expr::Int { value: 0 }),
// //                 })],
// //             }),
// //             Box::new(Expr::Return {
// //                 value: Box::new(Expr::Arg {
// //                     arg_name: "ahoj".to_string(),
// //                     arg_type: Box::new(Expr::Type {
// //                         type_name: "i32".to_string(),
// //                         subtypes: Vec::new(),
// //                     }),
// //                 }),
// //             }),
// //         ],
// //     })];

// //     let expected = "define i32 @f(i32 %a){\n%a0 = icmp eq i32 %a, 0\nbr i1 %a0, label %then, label %else\nthen:\nret i32 1\nelse:\nret i32 0\n}\n";
// //     let result = Codegen::new(input).generate_llvm().unwrap();
// //     println!("{}", result);
// //     assert_eq!(expected, result);
// // }

// #[test]
// fn test_if() {
//     let input = vec![Expr::new_function_def(
//         "f".to_string(),
//         Expr::new_type("i32".to_string(), Vec::new()),
//         vec![Expr::new_arg(
//             "a".to_string(),
//             Expr::new_type("i32".to_string(), Vec::new()),
//         )],
//         vec![
//             Expr::new_let(Expr::new_arg(
//                 "ahoj".to_string(),
//                 Expr::new_type("i32".to_string(), Vec::new()),
//             )),
//             Expr::new_if(
//                 Expr::new_binary_op(
//                     "==".to_string(),
//                     Expr::new_arg("a".to_string(), Expr::new_i32()),
//                     Expr::new_int(33),
//                 ),
//                 vec![Expr::new_assign(
//                     Expr::new_arg(
//                         "ahoj".to_string(),
//                         Expr::new_type("i32".to_string(), Vec::new()),
//                     ),
//                     Expr::new_int(44),
//                 )],
//                 vec![Expr::new_assign(
//                     Expr::new_arg(
//                         "ahoj".to_string(),
//                         Expr::new_type("i32".to_string(), Vec::new()),
//                     ),
//                     Expr::new_int(0),
//                 )],
//             ),
//             Expr::new_return(Expr::new_arg("ahoj".to_string(), Expr::new_i32())),
//         ],
//     )];

//     let expected = "define i32 @f(i32 %a){\n%a0 = icmp eq i32 %a, 0\nbr i1 %a0, label %then, label %else\nthen:\nret i32 1\nelse:\nret i32 0\n}\n";
//     let result = Codegen::new(input).generate_llvm().unwrap();
//     println!("{}", result);
//     assert_eq!(expected, result);
// }
