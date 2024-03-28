import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/main.dart';
import 'package:facebook/profil_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override


    bool clear = false;
    bool get = false;
    bool clear1 = false;
    @override
    Widget build(BuildContext context) {
      List menu = [
        {"icon": imageconstant.jobs, "text": "Jobs"},
        {"icon": imageconstant.medikit, "text": "COVID-19 information Center"},
        {"icon": imageconstant.globe, "text": "Marketplace"},
        {"icon": imageconstant.useplus, "text": "Friends"},
        {"icon": imageconstant.Events, "text": "Events"},
        {"icon": imageconstant.Game, "text": "Gaming"},
        {"icon": imageconstant.Cloud, "text": "Weather"},
        {"icon": imageconstant.Save, "text": "Saved"},

      ];
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Menu",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.06),
                      ),
                      Container(
                        width: width * 0.13,
                        height: width * 0.11,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          color: Colorpage.lightgrey,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            imageconstant.search,
                            color: Colorpage.black,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Shorctus"),
                    ],
                  ),
                ),
                Container(
                  height: width * 1.1,
                  width: width * 1,
                  color: Colorpage.fivecolor,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(children: [
                          Container(
                            height: width * 0.1,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                                color: Colorpage.fivecolor,
                                borderRadius: BorderRadius.circular(
                                    width * 0.03),
                                border: Border.all(
                                    color: Colorpage.primarycolor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(menu[index]["text"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colorpage.primarycolor
                                  ),),
                                SizedBox(width: width * 0.03,),
                                SvgPicture.asset(menu[index]["icon"])
                              ],
                            ),
                          ),
                        ]);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: width * 0.03,
                        );
                      },
                      itemCount: menu.length),
                ),
                Column(
                  children: [
                    clear1 == false ?
                    InkWell(onTap: () {
                      setState(() {
                        clear = true;
                        get = false;
                        clear1 = true;
                      });
                    },
                      child: Container(
                        width: width * 0.9,
                        height: width * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.04),
                            border: Border.all(color: Colorpage.lightgrey)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("See less", style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              // color: ColourConstant.primaryColor
                            ),),

                          ],
                        ),
                      ),
                    ) :
                    InkWell(onTap: () {
                      setState(() {
                        clear = false;
                        get = true;
                        clear1 = false;
                      });
                    },
                      child: Container(
                        width: width * 0.9,
                        height: width * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.04),
                            border: Border.all(color: Colorpage.lightgrey)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("See more", style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              // color: ColourConstant.primaryColor
                            ),),

                          ],
                        ),
                      ),
                    ),
                    clear1 == false ?
                    Column(
                      children: [
                        Container(
                          width: width * 0.9,
                          height: width * 0.1,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(" Community resources", style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                // color: ColourConstant.primaryColor
                              ),),
                              SizedBox(width: width * 0.02),
                              SvgPicture.asset(imageconstant.Community)

                            ],
                          ),
                        ),
                        Divider(color: Colorpage.lightgrey,),
                        Container(
                          width: width * 0.9,
                          height: width * 0.1,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Help & Support", style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colorpage.secandarycolor
                              ),),
                              SizedBox(width: width * 0.02),

                              SvgPicture.asset(imageconstant.Light)

                            ],
                          ),
                        ),
                        Divider(color: Colorpage.lightgrey,),
                        Container(
                          width: width * 0.9,
                          height: width * 0.1,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(width*0.04),
                          //    border: Border.all(color: ColourConstant.thirdColor)
                          // ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Settings & Privacy", style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colorpage.secandarycolor
                              ),),
                              SizedBox(width: width * 0.02),

                              SvgPicture.asset(imageconstant.settings)

                            ],
                          ),
                        ),
                        Divider(color: Colorpage.lightgrey,),
                        InkWell(onTap: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            anchorPoint: Offset(2, 5),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    width * 0.05)
                            ),
                            builder: (context) {
                              return Container(
                                height: width * 0.6,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        width * 0.05)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                          "Are you sure you want to log out?",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    SizedBox(height: width * 0.05,),
                                    InkWell(onTap: () {
                                      Navigator.pushAndRemoveUntil(
                                          context, MaterialPageRoute(
                                        builder: (context) =>
                                            profile_login(),), (
                                          route) => false);
                                    },
                                      child: Container(
                                        height: width * 0.1,
                                        width: width * 0.8,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                width * 0.03),
                                            gradient: LinearGradient(colors: [
                                              Colorpage.primarycolor,
                                              Colorpage.secandarycolor
                                            ])

                                        ),
                                        child: Center(
                                            child: Text("YES", style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),)),
                                      ),
                                    ),
                                    SizedBox(height: width * 0.05,),
                                    InkWell(onTap: () {
                                      Navigator.pop(context);
                                    },
                                      child: Container(
                                        height: width * 0.1,
                                        width: width * 0.8,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                width * 0.03),
                                            gradient: LinearGradient(colors: [
                                              Colorpage.primarycolor,
                                              Colorpage.secandarycolor
                                            ])

                                        ),
                                        child: Center(
                                            child: Text("NO", style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),)),
                                      ),
                                    ),
                                  ],
                                ),

                              );
                            },
                          );
                        },
                          child: Container(
                            width: width * 0.9,
                            height: width * 0.1,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(width*0.04),
                            //    border: Border.all(color: ColourConstant.thirdColor)
                            // ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("log out", style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red
                                ),),
                                SizedBox(width: width * 0.02),

                                Icon(Icons.logout, color: Colors.red,)

                              ],
                            ),
                          ),
                        ),
                      ],
                    ) :
                    SizedBox()

                  ],
                ),


              ],
            ),


          ),
        ),


      );
    }


  }

