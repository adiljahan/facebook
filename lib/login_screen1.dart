import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/forgot_pass_mobile.dart';
import 'package:facebook/login_screen2.dart';
import 'package:facebook/main.dart';
import 'package:facebook/password.dart';
import 'package:flutter/material.dart';

class login_screen1 extends StatefulWidget {
  const login_screen1({super.key});

  @override
  State<login_screen1> createState() => _login_screen1State();
}

class _login_screen1State extends State<login_screen1> {
  bool pass = false;

  final emailValidation = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final passwordValidation =
      RegExp(r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$');
  TextEditingController email = TextEditingController();
  TextEditingController  password=TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: width * 0.85,
                          width: width * 1,

                          child: Image.asset(
                            imageconstant.login_screen1,
                            fit: BoxFit.fill,
                          ),
                          // child:  Image.asset()
                        ),
                        Container(
                            height: width * 0.48,
                            width: width * 0.8,
                            //color: Colors.red,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    labelText: "Phone or Email",
                                    labelStyle: TextStyle(
                                        fontSize: width * 0.04,
                                        color: Colorpage.rr),
                                    suffixIcon: InkWell(
                                        onTap: () {
                                          email.clear();
                                        },
                                        child: Icon(Icons.clear)),
                                    border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: password,
                                  keyboardType: TextInputType.visiblePassword,
                                  textInputAction: TextInputAction.next,
                                  obscureText: pass ? false : true,
                                  // validator: (value) {
                                  //   if (!passwordValidation.hasMatch(value!)) {
                                  //     print(value);
                                  //     return "pls ender your valid password";
                                  //   } else {
                                  //     return null;
                                  //   }
                                  //   },
                                  decoration: InputDecoration(
                                    labelText: "password",
                                    labelStyle: TextStyle(
                                        fontSize: width * 0.04,
                                        color: Colorpage.rr),
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        pass = !pass;
                                        setState(() {});
                                      },
                                      child: pass
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off,
                                              size: width * 0.05),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        InkWell(
                          onTap: (){
                            if(
                            email.text!=""&&
                                password.text!=""&&
                            formKey.currentState!.validate()

                            ) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => forgot_pass_mobile(
                                  email: email.text, password: password.text,),));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("subtted sussedfully")));
                            }else{
                              emailValidation.toString() == "" ? ScaffoldMessenger.of(
                                  context).showSnackBar(SnackBar(content: Text(
                                  "please enter your email"))) :
                              passwordValidation.toString() == "" ? ScaffoldMessenger.of(
                                  context).showSnackBar(SnackBar(content: Text(
                                  "please enter your password"))) :
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("enter your valid Details")));
                            }
                            },
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => lodin_screen2(),
                          //       ));
                          //   setState(() {});
                          // },
                          child: Container(
                            height: width * 0.12,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colorpage.primarycolor,
                                    Colorpage.fourthcolor
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                              "Login",
                              style: TextStyle(color: Colorpage.fivecolor),
                            )),
                          ),
                        ),
                        Container(
                          height: width * 0.12,
                          width: width * 0.8,
                          //  color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Forgot Password?"),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Divider(
                              indent: width * 0.025,
                              endIndent: width * 0.025,
                              color: Colorpage.rr,
                            )),
                            Text(
                              "or",
                              style: TextStyle(color: Colorpage.rr),
                            ),
                            Expanded(
                                child: Divider(
                              indent: width * 0.025,
                              endIndent: width * 0.025,
                              color: Colorpage.rr,
                            )),
                          ],
                        ),
                        SizedBox(
                          height: width * 0.03,
                        ),
                        Container(
                          height: width * 0.12,
                          width: width * 0.7,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colorpage.primaryColor),
                            gradient: LinearGradient(
                                colors: [
                                  Colorpage.fivecolor,
                                  Colorpage.fivecolor
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Text(
                            "Create new Facebook account",
                            style: TextStyle(color: Colorpage.secandarycolor),
                          )),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
