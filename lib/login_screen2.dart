import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/forgot_pass_mobile.dart';
import 'package:facebook/password.dart';
import 'package:flutter/material.dart';

import 'Constant/constan_color.dart';
import 'main.dart';

class lodin_screen2 extends StatefulWidget {
  const lodin_screen2({super.key});

  @override
  State<lodin_screen2> createState() => _lodin_screen2State();
}

class _lodin_screen2State extends State<lodin_screen2> {
  bool pass=false;
  TextEditingController email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: width*0.85,
                        width: width*1,

                        child: Image.asset(imageconstant.backgroud2,fit: BoxFit.fill,),
                        // child:  Image.asset()
                      ),
                      Container(
                          height: width * 0.48,
                          width: width * 0.8,
                          //color: Colors.red,
                          child: Column(
                            children: [
                              TextFormField(
                                // controller: password,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  labelText:   "Phone or Email",
                                  labelStyle: TextStyle(
                                      fontSize: width * 0.04, color: Colorpage.rr),
                                  suffixIcon: Icon(Icons.clear),
                                  border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              TextFormField(

                                // controller: password,
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.next,
                                obscureText: pass? false: true,
                                decoration: InputDecoration(

                                  labelText:   "password",


                                  labelStyle: TextStyle(
                                      fontSize: width * 0.04, color: Colorpage.rr),

                                  suffixIcon:InkWell(


                                    onTap: () {
                                      email.clear();
                                      pass=!pass;
                                      setState(() {

                                      });

                                    },
                                    child: pass?Icon(Icons.visibility):Icon(Icons.visibility_off,size:width*0.05),),
                                  border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                      InkWell
                        (     onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => forgot_pass_mobile(email: email.text, password: '',),));setState(() {

                        });
                      },
                        child: Container(
                          height: width*0.12,
                          width: width*0.8,

                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Colorpage.primarycolor,Colorpage.fourthcolor],begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),



                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Center(child: Text("Login",style: TextStyle(color:Colorpage.fivecolor),)),


                        ),
                      ),
                      Container(

                        height: width*0.12,
                        width: width*0.8,
                        //  color: Colors.red,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forgot Password?"),


                          ],

                        ),












                      ),
                      Row(
                        children: [Expanded(
                            child: Divider(
                              indent: width*0.025,
                              endIndent: width*0.025,
                              color: Colorpage.rr,)
                        ),
                          Text("or",style: TextStyle(
                              color: Colorpage.rr
                          ),),
                          Expanded(
                              child: Divider(
                                indent: width*0.025,
                                endIndent: width*0.025,
                                color: Colorpage.rr,)
                          ),
                        ],
                      ),
                      SizedBox(height: width*0.03,),
                      Container(
                        height: width*0.12,
                        width: width*0.8,

                        decoration: BoxDecoration(
                          border: Border.all(color: Colorpage.primaryColor),

                          gradient: LinearGradient(colors: [Colorpage.fivecolor,Colorpage.fivecolor],begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                          ),



                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Center(child: Text("Create new Facebook account",style: TextStyle(color:Colorpage.secandarycolor),)),


                      ),

                    ],


                  ),
                ],
              )
            ],

          ),
        ),
      ),
    );

  }
}
