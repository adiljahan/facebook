import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/Terms_privacy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  final formKey = GlobalKey<FormState>();
  final passwordValidation =
  RegExp(r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$');



  TextEditingController passwordCondroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar:
    AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      leading: Center(
        child: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {

              });
            },
            child: Container(

                child: SvgPicture.asset(imageconstant.Backicon))),
      ),

      // centerTitle: true,
      title: Text(
        "password",
        style: TextStyle(fontSize: 15, color: Colorpage.secandarycolor),
      ),

    ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Container(
    width: width * 1,
    height: width * 0.5,
    margin: EdgeInsets.all(width * 0.06),
    // color: Colors.red,
    child: Column(

    children: [
    Center(
    child: Text(
    "Choose a password",
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    )),
          SizedBox(height: width*0.03,),
    Text(


    "Create a password at least with 6 chaeacters.",
    style: TextStyle(color: CupertinoColors.secondaryLabel,
    fontSize: 12,
    ),

    ),
          SizedBox(height: width*0.02,),

          Text("It should be something others couldn’t guess.",style: TextStyle(color: CupertinoColors.secondaryLabel),
          ), ],
           )
    ),
          Container(
            height: width * 0.48,
            width: width * 0.8,
            child: Expanded(
              child: TextFormField(
                controller:passwordCondroler,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  // if (!passwordValidation.hasMatch(value!)) {
                  // return "Password must contain \n1 capital(A-Z)\n1 small(a-z)\n1 Number(0-9)\n1 Special characterPassword must contain ";
                  // } else {
                  // return null;
                  // }
                  // },
                  //             autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration:
                  InputDecoration(

                    labelText: "password",
                    labelStyle: TextStyle(
                        fontSize: width * 0.04, color: Colorpage.primaryColor),
                    suffixIcon: InkWell(child: Icon(Icons.clear)),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),


                  );
                }
        ),

    )

          ),
          InkWell(
            onTap: () {
              if (
              passwordCondroler.text != "" &&
                  formKey.currentState!.validate()
              ) {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Terms_privacy(),));
                ScaffoldMessenger.of(context)
                    .showSnackBar(
                    SnackBar(content: Text("sumitted sucssfully")));
              } else {
                passwordCondroler.text == "" ? ScaffoldMessenger.of(
                    context).showSnackBar(SnackBar(content: Text(
                    "please enter your mobile number"))) :
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                    content: Text("enter your valid details")));
              }
            },
            child: Container(

              height: width * 0.12,
              width: width * 0.8,
              decoration: BoxDecoration(
                color: Colors.red,
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
                    "Next",
                    style: TextStyle(color: Colorpage.fivecolor),
                  )),
            ),
          ),

    ])
    ))

    );
  }
}
