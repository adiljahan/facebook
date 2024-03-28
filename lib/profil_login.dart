import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/HOME_screen1.dart';
import 'package:facebook/Join%20facebook.dart';
import 'package:facebook/login_screen1.dart';
import 'package:facebook/login_screen2.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class profile_login extends StatefulWidget {
  const profile_login({super.key});

  @override
  State<profile_login> createState() => _profile_loginState();
}

class _profile_loginState extends State<profile_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image(
                  height: width * 0.2,
                  width: width * 0.3,
                  image: AssetImage(imageconstant.logo)),
            ),
            SizedBox(
              height: width * 0.2,
            ),
            Container(
              width: width*0.9,
              height: width*0.8,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HOME_screen1(),
                            ));
                        setState(() {});
                      });
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: width * 0.20,
                                    width: width * 0.18,
                                    child: Image(
                                      image: AssetImage(imageconstant.profile),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: width * 0.11),
                                    child: CircleAvatar(
                                      child: Text("7"),
                                      radius: 12,
                                      backgroundColor: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              Text("Sanjay Shendy",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SvgPicture.asset(imageconstant.threeicons),
                          SizedBox()
                        ]),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(width * 0.03),
                        child: InkWell(
                          onTap:  () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => login_screen1(),));
                            setState(() {

                            });
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(imageconstant.addicon),
                                SizedBox(
                                  width: width * 0.03,
                                ),
                                Text(
                                  "Log into Another Account",
                                  style: TextStyle(color: Colorpage.primarycolor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: width * 0.04),
                      Padding(
                        padding: EdgeInsets.all(width * 0.03),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => lodin_screen2(),));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  imageconstant.search,
                                  color: Colorpage.primarycolor,
                                ),
                                SizedBox(width: width*0.04,),
                                Text(
                                  "Fing your Account",
                                  style: TextStyle(color: Colorpage.primarycolor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: () {
                               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => joinfacebook(),
                  ),
                );
                setState(() {});
              },
              child: Container(
                height: width * 0.12,
                width: width * 0.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colorpage.primarycolor, Colorpage.fourthcolor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "Creat New Facebook Account",
                  style: TextStyle(color: Colorpage.fivecolor),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
