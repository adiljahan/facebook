import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/Creat_new_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Constant/constan_color.dart';
import 'main.dart';

class OTP_verification extends StatefulWidget {
  const OTP_verification({super.key});

  @override
  State<OTP_verification> createState() => _OTP_verificationState();
}

class _OTP_verificationState extends State<OTP_verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
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
            "Find Your Account",
            style: TextStyle(fontSize: 15, color: Colorpage.secandarycolor),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(width * 0.07),
          child: Form(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Enter the code we sent to",
                          style: TextStyle(
                            height: width * 0.01,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colorpage.secandarycolor,
                          ),
                        ),
                      ],
                    ),
                    Text("Sanjayshendy123@gmail.com",style: TextStyle(fontWeight: FontWeight.w400)),
                    SizedBox(height: height*0.01,),
                    Text("We sent 6 digit code to your email address.",style: TextStyle(color: Colorpage.secandarycolor)),

                  ],
                ),

                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Center(child: Text("Enter Code")),
                  ),
                ),
                SizedBox(height: width*0.04,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => (Creat_new_password()),
                        ));
                  },

                  child: Container(
                    width: width * 0.7,
                    height: width * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.04),
                      gradient: LinearGradient(colors: [
                        Colorpage.primaryColor,
                        Colorpage.primarycolor
                      ]),
                    ),
                    child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colorpage.fivecolor),
                        )),
                  ),
                ),
                Column(
                  children: [
                    Container(

                      height: width*0.18,
                      child: Row(

                        children: [
                          SvgPicture.asset(imageconstant.email),
                          SizedBox(width:width* 0.03,),
                          Text(
                            "Send email again",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),


                    ),
                    Row(
                      children: [
                        SvgPicture.asset(imageconstant.Sms369),
                        SizedBox(width:width* 0.03,),

                        Text(
                          "Get code via SMS",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),

                  ],
                )

              ],
            ),
          ),
        ));

  }
}
