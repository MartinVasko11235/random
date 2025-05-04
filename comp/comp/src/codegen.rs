use crate::{expr::Expr, get_field, get_fields};

pub struct Codegen {
    exprs: Vec<Box<Expr>>,
    temp_id: i32,
    last_temp: (String, i32),
}

impl Codegen {
    pub fn new(exprs: Vec<Box<Expr>>) -> Self {
        Codegen {
            exprs,
            temp_id: 0,
            last_temp: (String::new(), 0),
        }
    }

    pub fn generate_llvm(&mut self) -> Result<String, &'static str> {
        let mut llvm = String::new();
        for expr in self.exprs.clone() {
            llvm.push_str(&match *expr {
                Expr::FunctionDef {
                    fn_name: ref name,
                    ref ret_expr,
                    ref ret_type,
                    ref args,
                    ref body,
                } => self.generate_function_def(
                    name.clone(),
                    ret_expr.clone(),
                    ret_type.clone(),
                    args.clone(),
                    body.clone(),
                )?,
                Expr::StructDef {
                    ref struct_name,
                    ref fields,
                } => self.generate_struct_def(struct_name.clone(), fields.clone())?,
                Expr::Assign { ref arg, ref value } => {
                    self.generate_global_var(arg.clone(), value.clone())?
                }
                _ => unreachable!("file can contain only function and structure definitions and global variables "),
            });
        }
        Ok(llvm)
    }

    fn generate_instruction(&mut self, expr: &Box<Expr>) -> Result<String, &'static str> {
        let mut llvm = String::new();

        llvm.push_str(&match **expr {
            Expr::Assign { ref arg, ref value } => {
                self.generate_local_var(arg.clone(), value.clone())?
            }
            Expr::BinaryOp {
                ref op,
                ref lhs,
                ref rhs,
            } => self.generate_binop(op.clone(), lhs.clone(), rhs.clone())?,
            Expr::UnaryOp { ref op, ref expr } => self.generate_unop(op.clone(), expr.clone())?,
            Expr::If {
                ref cond,
                ref then,
                ref else_,
            } => self.generate_if(cond.clone(), then.clone(), else_.clone())?,
            Expr::While { ref cond, ref body } => {
                self.generate_while(cond.clone(), body.clone())?
            }
            Expr::For {
                ref init,
                ref cond,
                ref update,
                ref body,
            } => self.generate_for(init.clone(), cond.clone(), update.clone(), body.clone())?,
            Expr::Return { ref value } => self.generate_return(value.clone())?,
            Expr::FunctionCall {
                ref fn_name,
                ref ret_type,
                ref args,
            } => self.generate_function_call(fn_name.clone(), ret_type.clone(), args.clone())?,
            Expr::StructAccess {
                ref struct_name,
                ref field_name,
            } => self.generate_struct_access(struct_name.clone(), field_name.clone())?,
            Expr::Let { ref arg } => self.generate_let(arg.clone())?,
            _ => unreachable!("invalid instruction"),
        });

        Ok(llvm)
    }

    fn generate_function_def(
        &mut self,
        fn_name: String,
        ret_expr: Box<Expr>,
        ret_type: Box<Expr>,
        args: Vec<Box<Expr>>,
        body: Vec<Box<Expr>>,
    ) -> Result<String, &'static str> {
        let mut llvm = String::new();

        llvm.push_str(&format!(
            "define {} @{}(",
            get_field!(ret_type, Type, type_name),
            fn_name
        ));

        llvm.push_str(
            &args
                .iter()
                .map(|field| {
                    let (arg_name, arg_type) = get_fields!(field.clone(), Arg, arg_name, arg_type);
                    format!("{} %{}", get_field!(arg_type, Type, type_name), arg_name)
                })
                .collect::<Vec<String>>()
                .join(", "),
        );

        llvm.push_str("){\n");

        llvm.push_str(
            &body
                .iter()
                .map(|expr| self.generate_instruction(expr))
                .collect::<Result<Vec<String>, &'static str>>()?
                .join(""),
        );

        llvm.push_str(&self.generate_instruction(&ret_expr)?);

        llvm.push_str(&format!(
            "ret {} temp.{}\n",
            self.last_temp.0, self.last_temp.1
        ));

        llvm.push_str("}\n");

        Ok(llvm)
    }

    fn generate_function_call(
        &mut self,
        fn_name: String,
        ret_type: Box<Expr>,
        args: Vec<Box<Expr>>,
    ) -> Result<String, &'static str> {
        let mut llvm = String::new();

        llvm.push_str(&format!("%temp.{} = ", self.temp_id));
        let type_name = get_field!(ret_type, Type, type_name);
        self.last_temp = (type_name.clone(), self.temp_id);
        self.temp_id += 1;

        llvm.push_str(&format!("call {} @{}(", type_name, fn_name));

        llvm.push_str(
            &args
                .iter()
                .map(|arg| {
                    let (arg_name, arg_type) = get_fields!(arg.clone(), Arg, arg_name, arg_type);
                    format!("{} %{}", get_field!(arg_type, Type, type_name), arg_name)
                })
                .collect::<Vec<String>>()
                .join(", "),
        );

        llvm.push_str(")\n");

        Ok(llvm)
    }

    fn generate_struct_def(
        &mut self,
        name: String,
        fields: Vec<Box<Expr>>,
    ) -> Result<String, &'static str> {
        let mut llvm = String::new();

        llvm.push_str(&format!("%{} = type{{", name));

        llvm.push_str(
            &fields
                .iter()
                .map(|field| {
                    let arg_type = get_field!(field.clone(), Arg, arg_type);
                    format!("{}", get_field!(arg_type, Type, type_name))
                })
                .collect::<Vec<String>>()
                .join(", "),
        );

        llvm.push_str("}\n");

        Ok(llvm)
    }

    fn generate_struct_access(
        &mut self,
        struct_name: String,
        field_name: String,
    ) -> Result<String, &'static str> {
        todo!()
    }

    fn generate_let(&mut self, arg: Box<Expr>) -> Result<String, &'static str> {
        let mut llvm = String::new();

        let (arg_name, arg_type) = get_fields!(arg, Arg, arg_name, arg_type);
        llvm.push_str(&format!(
            "%{} = alloca {}\n",
            arg_name,
            get_field!(arg_type, Type, type_name)
        ));

        Ok(llvm)
    }

    fn generate_local_var(
        &mut self,
        arg: Box<Expr>,
        value: Box<Expr>,
    ) -> Result<String, &'static str> {
        let mut llvm = String::new();

        let arg_name = get_field!(arg, Arg, arg_name);
        // llvm.push_str(&format!(
        //     "%{} = alloca {}\n",
        //     arg_name,
        //     get_field!(arg_type, Type, type_name)
        // ));

        llvm.push_str(&match *value {
            Expr::Int { value } => format!("store i32 {}, i32* %{}\n", value, arg_name),
            Expr::BinaryOp { op, lhs, rhs } => {
                self.generate_binop(op, lhs, rhs)?
                    + &format!(
                        "store {} %temp.{}, {}* %temp.{}\n",
                        self.last_temp.0, self.last_temp.1, self.last_temp.0, arg_name
                    )
            }
            Expr::FunctionCall {
                fn_name,
                ret_type,
                args,
            } => {
                self.generate_function_call(fn_name, ret_type, args)?
                    + &format!(
                        "store {} %temp.{}, {}* %temp.{}\n",
                        self.last_temp.0, self.last_temp.1, self.last_temp.0, arg_name
                    )
            }
            _ => todo!(),
        });

        Ok(llvm)
    }

    fn generate_global_var(
        &mut self,
        var: Box<Expr>,
        value: Box<Expr>,
    ) -> Result<String, &'static str> {
        todo!()
    }

    fn generate_load(
        &mut self,
        var_name: String,
        var_type: Box<Expr>,
    ) -> Result<String, &'static str> {
        let mut llvm = String::new();

        let type_name = get_field!(var_type, Type, type_name);

        llvm.push_str(&format!(
            "%temp.{} = load {}, {}* %{}\n",
            self.temp_id, type_name, type_name, var_name
        ));

        self.last_temp = (type_name, self.temp_id);
        self.temp_id += 1;

        Ok(llvm)
    }

    fn generate_binop(
        &mut self,
        op: String,
        lhs: Box<Expr>,
        rhs: Box<Expr>,
    ) -> Result<String, &'static str> {
        let mut llvm = String::new();

        let lhs_temp = match *lhs {
            Expr::Int { value } => format!("{}", value),
            Expr::Arg { arg_name, arg_type } => {
                self.generate_load(arg_name, arg_type)?;
                format!("%temp.{}", self.last_temp.1)
            }
            Expr::BinaryOp { op, lhs, rhs } => {
                self.generate_binop(op, lhs, rhs)?;
                format!("%temp.{}", self.last_temp.1)
            }
            Expr::FunctionCall {
                fn_name,
                ret_type,
                args,
            } => {
                self.generate_function_call(fn_name, ret_type, args)?;
                format!("%temp.{}", self.last_temp.1)
            }
            _ => todo!(),
        };

        let rhs_temp = match *rhs {
            Expr::Int { value } => format!("{}", value),
            Expr::Arg { arg_name, arg_type } => {
                self.generate_load(arg_name, arg_type)?;
                format!("%temp.{}", self.last_temp.1)
            }
            Expr::BinaryOp { op, lhs, rhs } => {
                self.generate_binop(op, lhs, rhs)?;
                format!("%temp.{}", self.last_temp.1)
            }
            Expr::FunctionCall {
                fn_name,
                ret_type,
                args,
            } => {
                self.generate_function_call(fn_name, ret_type, args)?;
                format!("%temp.{}", self.last_temp.1)
            }
            _ => todo!(),
        };

        llvm.push_str(&match op.as_str() {
            "+" => format!(
                "%temp.{} = add i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            "-" => format!(
                "%temp.{} = sub i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            "*" => format!(
                "%temp.{} = mul i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            "/" => format!(
                "%temp.{} = sdiv i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            "==" => format!(
                "%temp.{} = icmp eq i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            "!=" => format!(
                "%temp.{} = icmp ne i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            "<" => format!(
                "%temp.{} = icmp slt i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            "<=" => format!(
                "%temp.{} = icmp sle i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            ">" => format!(
                "%temp.{} = icmp sgt i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            ">=" => format!(
                "%temp.{} = icmp sge i32 {}, {}\n",
                self.temp_id, lhs_temp, rhs_temp
            ),
            _ => todo!(),
        });

        if op == "==" || op == "!=" || op == "<" || op == "<=" || op == ">" || op == ">=" {
            self.last_temp = ("i1".to_string(), self.temp_id);
        } else {
            self.last_temp = ("i32".to_string(), self.temp_id);
        }
        self.temp_id += 1;

        Ok(llvm)
    }

    fn generate_unop(&mut self, op: String, expr: Box<Expr>) -> Result<String, &'static str> {
        let mut llvm = String::new();

        llvm.push_str(&match op.as_str() {
            "-" => {
                let expr = match *expr {
                    Expr::Int { value } => format!("i32 {}", value),
                    _ => todo!(),
                };
                format!("%temp.{} = sub i32 0, {}\n", self.temp_id, expr)
            }
            _ => todo!(),
        });

        self.last_temp = ("i32".to_string(), self.temp_id);
        self.temp_id += 1;

        Ok(llvm)
    }

    fn generate_if(
        &mut self,
        cond: Box<Expr>,
        then: Vec<Box<Expr>>,
        else_: Vec<Box<Expr>>,
    ) -> Result<String, &'static str> {
        let mut llvm = String::new();

        let then_label = self.temp_id;
        let else_label = self.temp_id + 1;
        let end_label = self.temp_id + 2;
        self.temp_id += 3;

        llvm.push_str(&match *cond {
            Expr::BinaryOp { op, lhs, rhs } => {
                self.generate_binop(op, lhs, rhs)?
                    + &format!(
                        "br i1 %temp.{}, label %temp.{}, label %temp.{}\n",
                        self.last_temp.1, then_label, else_label
                    )
            }
            _ => todo!(),
        });

        llvm.push_str(&format!("temp.{}:\n", then_label));

        llvm.push_str(
            &then
                .iter()
                .map(|expr| self.generate_instruction(expr))
                .collect::<Result<Vec<String>, &'static str>>()?
                .join(""),
        );

        llvm.push_str(&format!("br label %temp.{}\n", end_label));

        llvm.push_str(&format!("temp.{}:\n", else_label));

        llvm.push_str(
            &else_
                .iter()
                .map(|expr| self.generate_instruction(expr))
                .collect::<Result<Vec<String>, &'static str>>()?
                .join(""),
        );

        llvm.push_str(&format!("br label %temp.{}\n", end_label));

        llvm.push_str(&format!("temp.{}:\n", end_label));

        Ok(llvm)
    }

    fn generate_while(
        &mut self,
        cond: Box<Expr>,
        body: Vec<Box<Expr>>,
    ) -> Result<String, &'static str> {
        let mut llvm = String::new();

        let cond_label = self.temp_id;
        let body_label = self.temp_id + 1;
        let end_label = self.temp_id + 2;
        self.temp_id += 3;

        llvm.push_str(&format!("br label %temp.{}\n", cond_label));

        llvm.push_str(&format!("temp.{}:\n", cond_label));

        llvm.push_str(&match *cond {
            Expr::BinaryOp { op, lhs, rhs } => {
                self.generate_binop(op, lhs, rhs)?
                    + &format!(
                        "br i1 %temp.{}, label %temp.{}, label %temp.{}\n",
                        self.last_temp.1, body_label, end_label
                    )
            }
            _ => todo!(),
        });

        llvm.push_str(&format!("temp.{}:\n", body_label));

        llvm.push_str(
            &body
                .iter()
                .map(|expr| match **expr {
                    Expr::Break => Ok(format!("br label %temp.{}\n", end_label)),
                    Expr::Continue => Ok(format!("br label %temp.{}\n", cond_label)),
                    _ => self.generate_instruction(expr),
                })
                .collect::<Result<Vec<String>, &'static str>>()?
                .join(""),
        );

        llvm.push_str(&format!("br label %temp.{}\n", cond_label));

        llvm.push_str(&format!("temp.{}:\n", end_label));

        Ok(llvm)
    }

    fn generate_return(&mut self, value: Box<Expr>) -> Result<String, &'static str> {
        todo!()
    }

    fn generate_for(
        &mut self,
        init: Box<Expr>,
        cond: Box<Expr>,
        update: Box<Expr>,
        body: Vec<Box<Expr>>,
    ) -> Result<String, &'static str> {
        todo!()
    }
}
