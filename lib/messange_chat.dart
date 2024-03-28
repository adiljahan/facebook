import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/Masiy_profile.dart';
import 'package:facebook/main.dart';
import 'package:facebook/personal_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class messande_chat extends StatefulWidget {
  const messande_chat({super.key});

  @override
  State<messande_chat> createState() => _messande_chatState();
}

class _messande_chatState extends State<messande_chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: width*0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(imageconstant.chandani,width: width*0.2,),
                        SizedBox(height: width*0.03,),
                        Text("Masiy Hupher",style: TextStyle(fontWeight: FontWeight.w800,fontSize: width*0.05),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: width*0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(imageconstant.Call),
                      SizedBox(height: width*0.03,),
                      Text("Audio")
                    ],
                  ),
                  Column(

                    children: [
                      SvgPicture.asset(imageconstant.videocall),
                      SizedBox(height: width*0.03,),
                      Text("Video")
                    ],
                  ),
                  InkWell(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Masiy_profile(),));
                    },
                    child: Container(
                      height: width*0.15,
                      width: width*0.15,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          SvgPicture.asset(imageconstant.gril),
                          SizedBox(height: width*0.03,),
                          Text("profile")
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(imageconstant.mute),
                      SizedBox(height: width*0.03,),
                      Text("Mute")
                    ],
                  )
                ],
              ),
              Divider(color: Colorpage.thirdcolor,),
              Padding(
                padding:  EdgeInsets.all(width*0.04),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Theme"),
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Emoji"),
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Nickname"),
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Word effects"),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: width*0.03),
                child: Divider(color: Colorpage.thirdcolor,),
              ),
              Padding(
                padding:  EdgeInsets.all(width*0.04),
                child: Column(

                  children: [
                    Row(
                        children: [
                          Text("More Actions",style: TextStyle(color: Colorpage.thirdcolor),),
                        ]),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("View photos & videos"),
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Search in conversation"),
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Secret conversation"),
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Create group with Maisy"),
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: width*0.03),
                child: Divider(color: Colorpage.thirdcolor,),
              ),
              Padding(
                padding:  EdgeInsets.all(width*0.04),
                child: Column(

                  children: [
                    Row(
                        children: [
                          Text("Privacy",style: TextStyle(color: Colorpage.thirdcolor),),
                        ]),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Notifications"),
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Block"),
                      ],
                    ),
                    SizedBox(height: width*0.03,),
                    Row(
                      children: [
                        Text("Report"),
                      ],
                    ),



                  ],
                ),
              ),
            ],
        ),
        );

  }
}
