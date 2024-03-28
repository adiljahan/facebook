import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class for_you extends StatefulWidget {
  const for_you({super.key});

  @override
  State<for_you> createState() => _for_youState();
}

class _for_youState extends State<for_you> {
  List video = [
  {
  "image1": imageconstant.balangimage,
  "text": "BasicHacker . ",
  "text1": "Follow",
  "image2": imageconstant.threedon,
  "text2": "10 h",
  "image3": "",
  "text3": "FREE FIRE LIVE ",
  "text4": "... See more",
  "image4": imageconstant.freefire,
  "icon1": imageconstant.like,
  "icon2": imageconstant.Sms1,
  "icon3": imageconstant.sub,
  "icon4": imageconstant.Bluelike,
  "icon5": imageconstant.redlove,
  "text5": "10k",
  "text6": "400 Comments . 270 Shares ",
  "icon6": ""
},
{
"image1": imageconstant.balangimage,
"text": "BasicHacker . ",
"text1": "Follow",
"image2": imageconstant.threedon,
"text2": "10 h",
"image3": "",
"text3": "FREE FIRE LIVE ",
"text4": "... See more",
"image4": imageconstant.freefire,
"icon1": imageconstant.like,
"icon2": imageconstant.Sms1,
"icon3": imageconstant.sub,
"icon4": imageconstant.Bluelike,
"icon5": imageconstant.redlove,
"text5": "10k",
"text6": "400 Comments . 270 Shares ",
"icon6":""
},
];

@override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: width * 3.6,
                      width: width * 1,
                      color: Colorpage.fivecolor,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              height: width * 1.2,
                              width: width * 0.4,
                              color: Colorpage.fivecolor,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset(video[index]["image1"]),
                                    title: Row(
                                      children: [
                                        Text(video[index]["text"]),
                                        Text(
                                          video[index]["text1"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colorpage.primarycolor),
                                        )
                                      ],
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          video[index]["text2"],
                                          style: TextStyle(fontSize: width * 0.03),
                                        )
                                      ],
                                    ),
                                    trailing: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset(
                                          video[index]["image2"],
                                          width: 0.01,
                                          color: Colorpage.secandarycolor,
                                        ),
                                        SvgPicture.asset(video[index]["icon6"]),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width * 0.03),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              video[index]["text3"],
                                              style: TextStyle(
                                                  fontSize: width * 0.035,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(video[index]["text4"])
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    video[index]["image4"],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(width * 0.03),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(video[index]["icon1"]),
                                        SizedBox(
                                          width: width * 0.05,
                                        ),
                                        SvgPicture.asset(video[index]["icon2"]),
                                        SizedBox(
                                          width: width * 0.05,
                                        ),
                                        SvgPicture.asset(video[index]["icon3"]),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(video[index]["icon4"]),
                                          SvgPicture.asset(
                                            video[index]["icon5"],
                                            width: width * 0.04,
                                          ),
                                          Text(
                                            video[index]["text5"],
                                            style: TextStyle(fontSize: width * 0.03),
                                          )
                                        ],
                                      ),
                                      Text(video[index]["text6"])
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: width * 0.03,
                            );
                          },
                          itemCount: video.length),
                    )
                  ],
                ),
                ),
            ));


  }
}
