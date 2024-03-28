import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/HOME_screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Constant/constan_color.dart';
import 'main.dart';

class Creat_new_password extends StatefulWidget {

  const Creat_new_password({super.key});

  @override
  State<Creat_new_password> createState() => _Creat_new_passwordState();
}

class _Creat_new_passwordState extends State<Creat_new_password> {
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        backgroundColor: Colors.white,
        leading: Center(
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
                setState(() {});
              },
              child: SvgPicture.asset(imageconstant.Backicon)),
        ),

        // centerTitle: true,
        title: Text(
          "Reset your password",
          style: TextStyle(fontSize: 15, color: Colorpage.secandarycolor),
        ),

      ),

        body: SingleChildScrollView(
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
                              "Create new password",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                            )),
                        SizedBox(height: width*0.03,),
                        Text(


                          "You will use this password to access your account.",
                          style: TextStyle(color: CupertinoColors.secondaryLabel,
                            fontSize: 12,
                          ),

                        ),
                        SizedBox(height: width*0.02,),

                        Text("Enter a combination of at least six numbers, letters\nand punctuation marks.",textAlign: TextAlign.center,style: TextStyle(color: CupertinoColors.secondaryLabel),
                        ), ],
                    )
                ),


                Container(
                  height: width * 0.2,
                  width: width * 0.8,
                  child: Expanded(
                    child: TextFormField(
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(

                        labelStyle: TextStyle(
                            fontSize: width * 0.04, color: Colorpage.primaryColor),

                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HOME_screen1(),));
                },
                  child: Container(

                    height: width * 0.12,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      gradient: LinearGradient(
                          colors: [Colorpage.primarycolor, Colorpage.fourthcolor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                          "log in",
                          style: TextStyle(color: Colorpage.fivecolor),
                        )),
                  ),
                ),






              ]),
        )

    );
  }
}
