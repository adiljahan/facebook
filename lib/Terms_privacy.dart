import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/HOME_screen1.dart';
import 'package:facebook/Home_Screen2.dart';
import 'package:facebook/login_screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class Terms_privacy extends StatefulWidget {
  const Terms_privacy({super.key});

  @override
  State<Terms_privacy> createState() => _Terms_privacyState();
}

class _Terms_privacyState extends State<Terms_privacy> {
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
          "Terms & Privacy",
          style: TextStyle(fontSize: 15, color: Colorpage.secandarycolor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.07),
        child: Column(

          children: [
            Center(
                child: Text(
                  "Finishing signing up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )),
            SizedBox(height: width*0.03,),
            Text(


              "By tapping Sign up, you agree to our ",
              style: TextStyle(color:Colorpage.secandarycolor,
                fontSize: 12,
              ),


            ),
            SizedBox(height: width*0.02,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Terms, Data Policy ",style: TextStyle(color: Colorpage.primaryColor),
                ),
                Text("and"),
    Text(" Cookies Policy",style: TextStyle(color: Colorpage.primaryColor)),
              ],
            ),
          SizedBox(height: width*0.4,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Terms_privacy(),));setState(() {

                });
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>HOME_screen1(),));setState(() {

                  });
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
                        "Sign up",
                        style: TextStyle(color: Colorpage.fivecolor),
                      )),
                ),
              ),
            ),
            SizedBox(height: width*0.02,),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sign up without updating my contact",style: TextStyle(
                      color: Colorpage.primaryColor
                    ),
                        
                    ),
                    Text("The Facebook company is now Meta. While our company name is changing, we are continuing to offer the same products, includingthe Facebook app from Meta. Our Data Policy and Terms of Service remain in effect, and this name change does not affect how we use or share data. Learn more about Meta and our vision for the metaverse.",textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
            
           

          ],
        ),


      ) ,

    );
  }
}
