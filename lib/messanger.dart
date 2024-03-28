import 'package:facebook/Blankpage.dart';
import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/New_messanger.dart';
import 'package:facebook/main.dart';
import 'package:facebook/messengerswipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class messanger extends StatefulWidget {
  const messanger({super.key});

  @override
  State<messanger> createState() => _messangerState();
}

class _messangerState extends State<messanger> {
  bool cont=false;
  get doNothing=>null;
  List chate = [
    {
      "image": imageconstant.vishpati2,
      "text": "Vish Patil",
    },
    {
      "image": imageconstant.Rakeshshetty2,
      "text": "Rakesh Shetty",
    },
    {
      "image": imageconstant.Kiranpawar369,
      "text": "Kiran Pawar",
    },
    {
      "image": imageconstant.DT2,
      "text": "Rocky Parker",
    },
    {
      "image": imageconstant.dell,
      "text": "Karen Castillo",
    },
  ];
  List chat1 = [
    {
      "image1": imageconstant.DT,
      "text1": "Rocky Parker",
      "text2": "You: Okay fine.  08:36 AM",
      "icon": imageconstant.tick
    },
    {
      "image1": imageconstant.Kiranpawar3,
      "text1": "Kiran Pawar",
      "text2": "You: Yes, Thanks!!   06:00 AM",
      "icon": imageconstant.tick
    },
    {
      "image1": imageconstant.chandani,
      "text1": "Rocky Parker",
      "text2": "You: See you soon.   Sat",
      "icon": imageconstant.tick
    },
    {
      "image1": imageconstant.dell2,
      "text1": "Rocky Parker",
      "text2": "Have a good day.   Fri",
      "icon": imageconstant.tick
    },
    {
      "image1": imageconstant.Karencastillo,
      "text1": "Rocky Parker",
      "text2": "You: Ok, see you in Tor..   Thu",
      "icon": imageconstant.tick
    },
    {
      "image1": imageconstant.kiranpawar1,
      "text1": "Rocky Parker",
      "text2": "The business plan loo..   Thu",
      "icon": imageconstant.tick
    },
    {
      "image1": imageconstant.DT2,
      "text1": "Rocky Parker",
      "text2": "You: Okay fine.  08:36 AM",
      "icon": imageconstant.tick
    },
    {
      "image1": imageconstant.kiranpawar1,
      "text1": "Rocky Parker",
      "text2": "You: Okay fine.  08:36 AM",
      "icon": imageconstant.tick
    },
    {
      "image1": imageconstant.dhani,
      "text1": "Rocky Parker",
      "text2": "You: Okay fine.  08:36 AM",
      "icon": imageconstant.tick
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          imageconstant.profile,
                          width: width * 0.15,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          "Chats",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: width * 0.08,
                            height: width * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              color: Colorpage.thirdcolor,
                            ),
                            child: SvgPicture.asset(imageconstant.Camaralogo1)),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Container(
                            width: width * 0.08,
                            height: width * 0.08,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.02),
                              color: Colorpage.thirdcolor,
                            ),
                            child: SvgPicture.asset(imageconstant.Pen)),
                      ],
                    )
                  ],
                ),
              ),
              
              Padding(
                padding: EdgeInsets.all(width * 0.04),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => New_messanger(),));
    },

                        child: Container(
                          width: width * 0.6,
                          height: width * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.04),
                            color: Colorpage.fivecolor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: width * 0.03),
                            child: Row(
                              children: [
                                SvgPicture.asset(imageconstant.search),
                                Text("Search")
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          width: width * 0.3,
                          height: width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.02),
                            color: Colorpage.lightgrey,
                          ),
                          child: Center(child: Text("Unread"))),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.all(width * 0.03),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: width * 0.27,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.04),
                            color: Colorpage.thirdcolor,
                          ),
                          child: SvgPicture.asset(
                            imageconstant.videocall,width: width*6,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text("Create\n"
                            "video call")
                      ],
                    ),
                    Expanded(
                      child: Container(

                        padding: EdgeInsets.only(left: width * 0.03),
                        height: width * 0.4,
                        width: width * 1,
                        color: Colorpage.fivecolor,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {

                              return Padding(
                                padding:  EdgeInsets.all(7.0),
                                child: Container(
                                  height: width * 0.4,
                                  width: width * 0.3,

                                  // color: Colors.red,
                                  child: Column(
                                    children: [
                                      Stack(children: [
                                        Container(
                                          height: width * 0.1,
                                          width: width * 2,
                                          //color: Colors.blue,
                                        ),
                                        Positioned(
                                          child: Container(
                                            height: width * 0.27,
                                            width: width * 0.32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                  width * 0.04),
                                              color: Colorpage.thirdcolor,
                                            ),
                                            child: Image.asset(
                                              chate[index]["image"],
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: width * 0.20,
                                          left: width * 0.25,
                                          child: CircleAvatar(
                                            backgroundColor: Colorpage.fivecolor,
                                            radius: width * 0.03,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.green,
                                              radius: width * 0.02,
                                            ),
                                          ),
                                        )
                                      ]),
                                      Text(
                                        chate[index]["text"],
                                        style: TextStyle(fontSize: width * 0.03),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: width * 0.03,
                              );
                            },
                            itemCount: chate.length),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: width * 2,
                width: width * 1,
                color: Colorpage.fivecolor,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          // Slidable(
                          //
                          //   key: UniqueKey(),
                          //   startActionPane: ActionPane(
                          //       motion: ScrollMotion(),
                          //       dismissible: DismissiblePane(onDismissed: () {}),
                          //       children: [
                          //         SlidableAction(
                          //           borderRadius: BorderRadius.circular(w*0.09),
                          //
                          //
                          //           onPressed: doNothing,
                          //           backgroundColor: ColorConst.seccondaryColor,
                          //           foregroundColor: ColorConst.black,
                          //           icon: Icons.camera_alt_outlined,
                          //
                          //         ),
                          //         SlidableAction(
                          //           borderRadius: BorderRadius.circular(w*0.09),
                          //           onPressed: doNothing,
                          //           backgroundColor: ColorConst.fivecolor,
                          //           foregroundColor: ColorConst.secandarycolor,
                          //           icon: Icons.call,
                          //
                          //         ),
                          //         SlidableAction(
                          //           borderRadius: BorderRadius.circular(w*0.09),
                          //           onPressed: doNothing,
                          //           backgroundColor: ColorConst.fivecolor,
                          //           foregroundColor: ColorConst.secandarycolor,
                          //           icon: Icons.videocam,
                          //
                          //         ),
                          //       ]),
                          //   endActionPane: ActionPane(
                          //       motion: ScrollMotion(),
                          //       dismissible: DismissiblePane(onDismissed: () {}),
                          //       children: [
                          //         SlidableAction(
                          //           borderRadius: BorderRadius.circular(w*0.09),
                          //
                          //
                          //           onPressed: doNothing,
                          //           backgroundColor: ColorConst.fivecolor,
                          //           foregroundColor: ColorConst.secandarycolor,
                          //           icon:Icons.list_outlined,
                          //
                          //         ),
                          //         SlidableAction(
                          //           borderRadius: BorderRadius.circular(w*0.09),
                          //           onPressed: doNothing,
                          //           backgroundColor: ColorConst.fivecolor,
                          //           foregroundColor: ColorConst.secandarycolor,
                          //           icon: CupertinoIcons.bell,
                          //
                          //         ),
                          //         SlidableAction(
                          //           borderRadius: BorderRadius.circular(w*0.09),
                          //           onPressed: doNothing,
                          //           backgroundColor: Colors.red,
                          //           foregroundColor: ColorConst.secandarycolor,
                          //           icon: Icons.delete,
                          //
                          //         ),
                          //       ]),
                          Container(
                              height: width * 0.22,
                              width: width * 1,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colorpage.fivecolor),
                                color: Colorpage.fivecolor,
                              ),
                              child: Column(children: [
                                Slidable(
                                  key: UniqueKey(),
                        startActionPane: ActionPane(
                            motion: ScrollMotion(),
                            dismissible: DismissiblePane(onDismissed: () {}),
                            children: [
                              SlidableAction(
                                borderRadius: BorderRadius.circular(width*0.09),


                                onPressed: doNothing,
                                backgroundColor: Colorpage.seccondaryColor,
                                foregroundColor: Colorpage.black,
                                icon: Icons.camera_alt_outlined,

                              ),
                              SlidableAction(
                                borderRadius: BorderRadius.circular(width*0.09),
                                onPressed: doNothing,
                                backgroundColor: Colorpage.white,
                                foregroundColor: Colorpage.black,
                                icon: Icons.call,

                              ),
                              SlidableAction(
                                borderRadius: BorderRadius.circular(width*0.09),
                                onPressed: doNothing,
                                backgroundColor: Colorpage.white,
                                foregroundColor: Colorpage.black,
                                icon: Icons.videocam,

                              ),
                            ]),
                        endActionPane: ActionPane(
                            motion: ScrollMotion(),
                            dismissible: DismissiblePane(onDismissed: () {}),
                            children: [
                        SlidableAction(
                        borderRadius: BorderRadius.circular(width*0.09),


                        onPressed: doNothing,
                        backgroundColor: Colorpage.white,
                        foregroundColor: Colorpage.black,
                        icon:Icons.list_outlined,

                      ),
                      SlidableAction(
                      borderRadius: BorderRadius.circular(width*0.09),
                      onPressed: doNothing,
                      backgroundColor: Colorpage.white,
                      foregroundColor: Colorpage.black,
                      icon: CupertinoIcons.bell,

                      ),
                      SlidableAction(
                      borderRadius: BorderRadius.circular(width*0.09),
                      onPressed: doNothing,
                      backgroundColor: Colors.red,
                      foregroundColor: Colorpage.black,
                      icon: Icons.delete,

                      ),
                      ]),

                      child: Container(
                                    height: width * 0.10,
                                    width: width * 1,
                                    decoration: BoxDecoration(
                                      border: Border(top: BorderSide(color: Colors.blue, width: 1)),
                                    ),
                                    child: ListTile(
                                        leading:
                                            Image.asset(chat1[index]["image1"]),
                                        title: Row(
                                          children: [
                                            Text(
                                              chat1[index]["text1"],
                                              style: TextStyle(
                                                  fontSize: width * 0.03,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Text(
                                              chat1[index]["text2"],
                                              style: TextStyle(
                                                  fontSize: width * 0.03),
                                            ),
                                          ],
                                        ),
                                        trailing: SvgPicture.asset(
                                            chat1[index]["icon"])),
                                  ),
                                ),
                              ])),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: width * 0.03,
                      );
                    },
                    itemCount: chat1.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
