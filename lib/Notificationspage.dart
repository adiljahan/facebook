import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';

class Notificationspage extends StatefulWidget {
  const Notificationspage({super.key});

  @override
  State<Notificationspage> createState() => _NotificationspageState();
}

class _NotificationspageState extends State<Notificationspage> {
  @override
  List notification= [
    {
      "image": imageconstant.docter,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": imageconstant.threedon,
    },
    {
      "image": imageconstant.dell,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": imageconstant.threedon,
    },
    {
      "image": imageconstant.chetanprofile,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": imageconstant.threedon,
    },
    {
      "image": imageconstant.DT,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": imageconstant.threedon
    },
    {
      "image": imageconstant.DT2,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": imageconstant.threedon
    },
    {
      "image": imageconstant.dell2,
      "text1": "Darrell Trivedi has a new story  up.\n"
          " What’s your reaction?",
      "text2": "2 hours ago",
      "icon": imageconstant.threedon
      }
    ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(width*0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notifications",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.05),)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(width*0.01),
                  child: Row(
                    children: [
                      Container(
                        height: width*0.05,
                        width: width*0.98,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Colorpage.lightprimaryColor,
                          Colorpage.lightsecondaryColor])
                        ),
                        child: Text("New",
                          style: TextStyle(fontSize: width*0.04,
                              fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
                Container(
                  height: width*1.2,
                  width: width*1,

                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: width*0.2,
                          width: width*0.33,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colorpage.lightprimaryColor,
                                    Colorpage.lightsecondaryColor,
                                  ]
                              )
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.asset(notification[index]["image"]),
                                title: Row(
                                  children: [
                                    Text(
                                      notification[index]["text1"],
                                      style: TextStyle(
                                          fontSize: width*0.03,
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                  ],
                                ),
                                subtitle: Row(
                                  children: [
                                    Text(
                                      notification[index]["text2"],
                                      style: TextStyle(fontSize: width*0.03),
                                    )
                                  ],
                                ),
                                trailing: PopupMenuButton(
                                  itemBuilder: (context) {
                                    return[];
                                  },
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: width*0.03,
                        );
                      },
                      itemCount: notification.length),
                ),
                Padding(
                  padding: EdgeInsets.all(width*0.01),
                  child: Row(
                    children: [
                      Text("Earlier",
                        style: TextStyle(fontSize: width*0.04,
                            fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  height: width*1.2,
                  width: width*1,

                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: width*0.2,
                          width: width*0.33,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colorpage.lightprimaryColor,
                                    Colorpage.lightsecondaryColor,
                                  ]
                              )
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.asset(notification[index]["image"]),
                                title: Row(
                                  children: [
                                    Text(
                                      notification[index]["text1"],
                                      style: TextStyle(
                                          fontSize: width*0.03,
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                  ],
                                ),
                                subtitle: Row(
                                  children: [
                                    Text(
                                      notification[index]["text2"],
                                      style: TextStyle(fontSize: width*0.03),
                                    )
                                  ],
                                ),
                                trailing: PopupMenuButton(
                                  itemBuilder: (context) {
                                    return[];
                                  },
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: width*0.03,
                        );
                      },
                      itemCount: notification.length),
                ),

              ],
              ),
          ),

    );
  }
}
