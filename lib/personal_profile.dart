import 'dart:io';

import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class personal_profile extends StatefulWidget {
  const personal_profile({super.key});

  @override
  State<personal_profile> createState() => _personal_profileState();
}

class _personal_profileState extends State<personal_profile> {



  @override
  bool b=false;
  List listtile=[
    {
      "list": imageconstant.mahan,
      "text1": "Sanjay Shendy",
      "text2": "1d",
      "icon": imageconstant.erath,
      "text3":  "You never been expected like as your friend can be look as \n"
          " much cute in specific costume, and suddenly if you have \n "
          "seen his picture on Facebook, then probably your comment \n"
          " on photo can be like as. “Cutenesoverloaded!”.",
      "car": imageconstant.deer,
      "icon2": imageconstant.like,
      "icon3": imageconstant.Sms1,
      "icon4": imageconstant.sub,
      "text4": "1k",
      "text5": "400 Comments . 270 Shares ",

    },
    {
      "list": imageconstant.mahan,
      "text1": "Sanjay Shendy",
      "text2": "10 h",
      "icon": imageconstant.erath,
      "text3": "You never been expected like as your friend can be look as \n"
          " much cute in specific costume, and suddenly if you have \n "
          "seen his picture on Facebook, then probably your comment \n"
          " on photo can be like as. “Cutenesoverloaded”. ",
      "car": imageconstant.roof,
      "icon2":"",
      "icon3":"",
      "icon4":"",
      "text4": "",
      "text5": "",

    },

  ];

  var file;
  Future<void> pickimage(ImageSource a) async {
    ImagePicker imagePicker = ImagePicker();
    final imamefile = await imagePicker.pickImage(source: a);
    file = File(imamefile!.path);
    if (mounted) {
      file = File(imamefile.path);
      setState((){});
    }
  }
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(children: [
              Column(
                children: [
                  Stack(children: [
                    Container(
                      height: width * 0.6,
                      width: width * 1,

                      child: Image.asset(imageconstant.Backgroundphoto,
                          fit: BoxFit.fill),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: width * 0.53, left: width * 0.83),
                      child: SvgPicture.asset(imageconstant.Camaralogo1),
                    )
                  ]),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: width * 0.35, left: width * 0.30),
                child: Stack(children: [
                  Container(
                    height: width * 0.41,
                    width: width * 0.41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.075),
                      color: Colorpage.fivecolor,
                    ),
                    child: Center(
                      child:file==null? Container(
                        height: width * 0.4,
                        width: width * 0.4,
                        child: Image.asset(
                          imageconstant.mahan,
                          fit: BoxFit.fill,
                        ),
                      ):
                      Container(
                          height: width * 0.4,
                          width: width  * 0.4,
                          decoration: BoxDecoration(
                              image: DecorationImage(image:  FileImage(file),
                                fit: BoxFit.fill,),
                              borderRadius: BorderRadius.circular(width *0.07)
                          ),

                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: width * 0.3, left: width * 0.3),
                    child: SvgPicture.asset(imageconstant.Camaralogo1),
                  ),
                ]),
              ),
            ]),
            Text(
              "Sanjay Shendy",
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: width * 0.049),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                height: width * 0.1,
                width: width * 0.4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colorpage.primarycolor, Colorpage.blue]),
                  borderRadius: BorderRadius.circular(width * 0.03),
                ),
                child: Center(
                  child: Text(
                    "Add to story",
                    style: TextStyle(
                      color: Colorpage.primarycolor2,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              InkWell
                (onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Choose a file from?"),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                pickimage(ImageSource.camera);

                              },
                              child: Container(
                                width: width * 0.15,
                                height: width * 0.10,
                                child: Center(
                                    child: Icon(Icons.camera_alt)),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colorpage.primaryColor,
                                    Colorpage.primarycolor,
                                  ]) ,
                                  borderRadius: BorderRadius.circular(width * 0.02),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                pickimage(ImageSource.gallery);

                              },
                              child: Container(
                                width: width * 0.15,
                                height: width * 0.10,
                                child:
                                Center(child: Icon(Icons.photo)),
                                decoration: BoxDecoration(
                                  gradient:   LinearGradient(colors: [
                                    Colorpage.primaryColor,
                                    Colorpage.primarycolor,
                                  ]) ,
                                  borderRadius: BorderRadius.circular(width * 0.02),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
                },

                child: Container(
                  height: width * 0.1,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(width * 0.03),
                  ),
                  child: Center(
                    child: Text(
                      "Edit profile",
                      style: TextStyle(
                        color: Colorpage.secandarycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [];
                },
              )
            ]),
            Padding(
              padding: EdgeInsets.all(width * 0.03),
              child: Row(children: [
                SvgPicture.asset(imageconstant.lock),
                SizedBox(
                  width: width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You locked your profile",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Text(
                      "Learn more",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colorpage.primarycolor),
                    ),
                  ],
                ),
              ]),
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Posts",
                      style: TextStyle(
                          color: Colorpage.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      "1972",
                      style: TextStyle(
                          color: Colorpage.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Friends",
                      style: TextStyle(
                          color: Colorpage.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      "4843",
                      style: TextStyle(
                          color: Colorpage.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: Colorpage.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      "1990",
                      style: TextStyle(
                          color: Colorpage.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Following",
                      style: TextStyle(
                          color: Colorpage.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Text(
                      "1456",
                      style: TextStyle(
                          color: Colorpage.primarycolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
           color: Colors.black,
            ),
            Container(
              height: width * 0.9,
              width: width * 0.92,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              imageconstant.bag,
                              width: width * 0.07,
                            ),
                            Text(
                              "Founder and CEO at",
                            ),
                            Text(" A to Z company Ltd.,",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: width * 0.09,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              imageconstant.cup,
                              width: width * 0.07,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Column(
                              children: [
                                Text("Studied Computer Science at"),
                                Text(
                                  "Harvard University",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              imageconstant.home1,
                              width: width * 0.07,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "Lives in Mumbai, Maharastra",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              imageconstant.map,
                              width: width * 0.07,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "From Mumbai, India.",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              imageconstant.three,
                              width: width * 0.07,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "See your about info.",
                            ),
                          ],
                        ),
                      ],
                    ),
                   b? Column(
                      children: [


                        Row(
                          children: [
                            Image.asset(
                              imageconstant.map,
                              width: width * 0.07,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "From Mumbai, India.",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              imageconstant.three,
                              width: width * 0.07,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "See your about info.",
                            ),
                          ],
                        ),

                      ],
                   ):
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Container(
                      height: width * 0.08,
                      width: width * 0.38,
                      child: Center(
                          child: Text(
                        "Edit public details",
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.03),
                        color: Colorpage.lightgrey,
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "1478 friends posted on your timeline for your birthday",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                        SvgPicture.asset(imageconstant.threedon)
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    InkWell(
                      onTap:() {
                        b=!b;
                        setState(() {

                        });

                      },


                      child:Container(
                        height: width * 0.07,
                        width: width * 0.30,
                        child: Center(
                            child: Text(b==false?"Sell All":"See Less"
                          ,
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          color: Colorpage.fourthcolor,
                        ),
                      ),
                    ),
                    Divider(
                     color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: width * 2,
                width: width * 1,
                color: Colors.grey,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                          height: width * 1.20,
                          width: width * 0.35,
                          color: Colors.white,
                          child: Column(children: [
                            ListTile(
                              leading: Image.asset(listtile[index]["list"]),
                              title: Text(
                                listtile[index]["text1"],
                                style: TextStyle(fontSize: width * 0.03,fontWeight: FontWeight.w600),
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    listtile[index]["text2"],
                                    style: TextStyle(fontSize: width * 0.03),
                                  ),
                                  SvgPicture.asset(listtile[index]["icon"])
                                ],
                              ),
                              trailing: PopupMenuButton(
                                itemBuilder: (context) {
                                  return [

                                  ];
                                },
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.all(width*0.03),
                              child: Row(
                                children: [

                                  Text(listtile[index]["text3"],style: TextStyle(fontSize: width*0.03)),
                                ],
                              ),
                            ),
                            Container(

                              child: Image.asset(listtile[index]["car"],height: width*0.65),),
                            Padding(
                              padding:  EdgeInsets.all(width*0.03),
                              child:   Row(

                                children: [
                                  SvgPicture.asset(listtile[index]["icon2"]),
                                  SizedBox(width: width*0.03,),
                                  SvgPicture.asset(listtile[index]["icon3"]),
                                  SizedBox(width: width*0.03,),
                                  SvgPicture.asset(listtile[index]["icon4"]),

                                ],

                              ),

                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                    children: [
                                      SvgPicture.asset(imageconstant.like1),

                                      SvgPicture.asset(imageconstant.like1,width: width*0.04,),
                                      Text(listtile[index]["text4"],style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.w600),),
                                    ]),

                                Text(listtile[index]["text5"],style: TextStyle(fontWeight: FontWeight.w600),)
                              ],
                            ),

                          ]));
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: width*0.01,
                      );
                    },
                    itemCount: listtile.length),

                ),



          ],
        ),
      ),
    );
  }
}
