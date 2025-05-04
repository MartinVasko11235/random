#[derive(Debug, Clone)]
pub enum Expr {
    Int {
        value: i32,
    },
    Long {
        value: i64,
    },
    LongLong {
        value: i128,
    },
    Float {
        value: f32,
    },
    Str {
        value: String,
    },
    Type {
        type_name: String,
        subtypes: Vec<Box<Expr>>,
    },
    Arg {
        arg_name: String,
        arg_type: Box<Expr>,
    },
    FunctionDef {
        fn_name: String,
        ret_expr: Box<Expr>,
        ret_type: Box<Expr>,
        args: Vec<Box<Expr>>,
        body: Vec<Box<Expr>>,
    },
    FunctionCall {
        fn_name: String,
        ret_type: Box<Expr>,
        args: Vec<Box<Expr>>,
    },
    StructDef {
        struct_name: String,
        fields: Vec<Box<Expr>>,
    },
    StructAccess {
        struct_name: String,
        field_name: String,
    },
    Array {
        arr_name: String,
        elem_type: Box<Expr>,
        elements: Vec<Box<Expr>>,
    },
    ArrayIndex {
        arr_name: String,
        index: usize,
    },
    BinaryOp {
        op: String,
        lhs: Box<Expr>,
        rhs: Box<Expr>,
    },
    UnaryOp {
        op: String,
        expr: Box<Expr>,
    },
    If {
        cond: Box<Expr>,
        then: Vec<Box<Expr>>,
        else_: Vec<Box<Expr>>,
    },
    While {
        cond: Box<Expr>,
        body: Vec<Box<Expr>>,
    },
    For {
        init: Box<Expr>,
        cond: Box<Expr>,
        update: Box<Expr>,
        body: Vec<Box<Expr>>,
    },
    Return {
        value: Box<Expr>,
    },
    Assign {
        arg: Box<Expr>,
        value: Box<Expr>,
    },
    Let {
        arg: Box<Expr>,
    },
    Break,
    Continue,
    Null,
}

impl Expr {
    pub fn new_int(value: i32) -> Box<Expr> {
        Box::new(Expr::Int { value })
    }
    pub fn new_long(value: i64) -> Box<Expr> {
        Box::new(Expr::Long { value })
    }
    pub fn new_longlong(value: i128) -> Box<Expr> {
        Box::new(Expr::LongLong { value })
    }
    pub fn new_float(value: f32) -> Box<Expr> {
        Box::new(Expr::Float { value })
    }
    pub fn new_str(value: String) -> Box<Expr> {
        Box::new(Expr::Str { value })
    }
    pub fn new_type(type_name: String, subtypes: Vec<Box<Expr>>) -> Box<Expr> {
        Box::new(Expr::Type {
            type_name,
            subtypes,
        })
    }
    pub fn new_i32() -> Box<Expr> {
        Expr::new_type("i32".to_string(), Vec::new())
    }
    pub fn new_arg(arg_name: String, arg_type: Box<Expr>) -> Box<Expr> {
        Box::new(Expr::Arg { arg_name, arg_type })
    }
    pub fn new_function_def(
        fn_name: String,
        ret_expr: Box<Expr>,
        ret_type: Box<Expr>,
        args: Vec<Box<Expr>>,
        body: Vec<Box<Expr>>,
    ) -> Box<Expr> {
        Box::new(Expr::FunctionDef {
            fn_name,
            ret_expr,
            ret_type,
            args,
            body,
        })
    }
    pub fn new_function_call(
        fn_name: String,
        ret_type: Box<Expr>,
        args: Vec<Box<Expr>>,
    ) -> Box<Expr> {
        Box::new(Expr::FunctionCall {
            fn_name,
            ret_type,
            args,
        })
    }
    pub fn new_struct_def(struct_name: String, fields: Vec<Box<Expr>>) -> Box<Expr> {
        Box::new(Expr::StructDef {
            struct_name,
            fields,
        })
    }
    pub fn new_struct_access(struct_name: String, field_name: String) -> Box<Expr> {
        Box::new(Expr::StructAccess {
            struct_name,
            field_name,
        })
    }
    pub fn new_array(
        arr_name: String,
        elem_type: Box<Expr>,
        elements: Vec<Box<Expr>>,
    ) -> Box<Expr> {
        Box::new(Expr::Array {
            arr_name,
            elem_type,
            elements,
        })
    }
    pub fn new_array_index(arr_name: String, index: usize) -> Box<Expr> {
        Box::new(Expr::ArrayIndex { arr_name, index })
    }
    pub fn new_binary_op(op: String, lhs: Box<Expr>, rhs: Box<Expr>) -> Box<Expr> {
        Box::new(Expr::BinaryOp { op, lhs, rhs })
    }
    pub fn new_unary_op(op: String, expr: Box<Expr>) -> Box<Expr> {
        Box::new(Expr::UnaryOp { op, expr })
    }
    pub fn new_if(cond: Box<Expr>, then: Vec<Box<Expr>>, else_: Vec<Box<Expr>>) -> Box<Expr> {
        Box::new(Expr::If { cond, then, else_ })
    }
    pub fn new_while(cond: Box<Expr>, body: Vec<Box<Expr>>) -> Box<Expr> {
        Box::new(Expr::While { cond, body })
    }
    pub fn new_for(
        init: Box<Expr>,
        cond: Box<Expr>,
        update: Box<Expr>,
        body: Vec<Box<Expr>>,
    ) -> Box<Expr> {
        Box::new(Expr::For {
            init,
            cond,
            update,
            body,
        })
    }
    pub fn new_return(value: Box<Expr>) -> Box<Expr> {
        Box::new(Expr::Return { value })
    }
    pub fn new_assign(arg: Box<Expr>, value: Box<Expr>) -> Box<Expr> {
        Box::new(Expr::Assign { arg, value })
    }
    pub fn new_let(arg: Box<Expr>) -> Box<Expr> {
        Box::new(Expr::Let { arg })
    }
    pub fn new_break() -> Box<Expr> {
        Box::new(Expr::Break)
    }
    pub fn new_continue() -> Box<Expr> {
        Box::new(Expr::Continue)
    }
}

#[macro_export]
macro_rules! get_field {
    ($from:expr, $type:ident, $field:ident) => {
        if let Expr::$type { $field, .. } = *$from {
            $field
        } else {
            panic!("Expected Expr::{} but got {:?}", stringify!($type), $from);
        }
    };
}

#[macro_export]
macro_rules! get_fields {
    ($from:expr, $type:ident,  $($field:ident),+ ) => {
        if let Expr::$type { $($field,)+ .. } = *$from {
            ($($field,)+)
        } else {
            panic!("Expected Expr::{} got {:?}", stringify!($type), $from);
        }
    };
}

// trait Expr {
//     fn codegen(self) -> Result<(), String>;
// }

// struct Int{
//     value: i32,
// }

// struct Float{
//     value: f32,
// }

// struct Str{
//     value: String,
// }

// struct Type{
//     name: String,
//     subtypes: Vec<Type>,
//     size: usize,
// }

// struct Arg{
//     name: String,
//     arg_type: Type,
// }

// struct Var{
//     name: String,
//     var_type: Type,
//     value: Box<dyn Expr>,
//     is_const: bool,
// }

// struct FunctionDef{
//     name: String,
//     ret_type: Type,
//     args: Vec<Arg>,
//     body: Vec<Box<dyn Expr>>,
// }

// struct FunctionCall{
//     name: String,
//     args: Vec<Var>,
// }

// struct StructDef{
//     name: String,
//     fields: Vec<Arg>,
// }

// struct StructInit{
//     name: String,
//     fields: Vec<Var>,
// }

// struct Array{
//     name: String,
//     elem_type: Type,
//     elements: Vec<Box<dyn Expr>>,
// }

// struct ArrayIndex{
//     name: String,
//     index: i32,
// }

// struct BinaryOp{
//     op: String,
//     lhs: Box<dyn Expr>,
//     rhs: Box<dyn Expr>,
// }

// struct UnaryOp{
//     op: String,
//     expr: Box<dyn Expr>,
// }

// struct If{
//     cond: Box<dyn Expr>,
//     then: Vec<Box<dyn Expr>>,
//     else_: Vec<Box<dyn Expr>>,
// }

// struct While{
//     cond: Box<dyn Expr>,
//     body: Vec<Box<dyn Expr>>,
// }

// struct Return{
//     value: Box<dyn Expr>,
// }

// struct Assign{
//     var: Var,
//     value: Box<dyn Expr>,
// }
