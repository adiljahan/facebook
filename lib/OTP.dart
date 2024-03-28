import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/OTP_verification.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Constant/constan_color.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                          builder: (context) => (OTP_verification()),
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
