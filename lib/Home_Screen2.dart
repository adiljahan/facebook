import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class Home_Screen2 extends StatefulWidget {
  const Home_Screen2({super.key});

  @override
  State<Home_Screen2> createState() => _Home_Screen2State();
}

class _Home_Screen2State extends State<Home_Screen2> {
  TextEditingController name = TextEditingController();
  List images = [
    {
      "image1": imageconstant.story369,
      "image2": imageconstant.plusicon,
      "text": ""
    },
    {
      "image1": imageconstant.story1,
      "image2": imageconstant.vishpati,
      "text": "Vish Patil"
    },
    {
      "image1": imageconstant.story2,
      "image2": imageconstant.Rakeshshetty,
      "text": "Rakesh Shetty"
    },
    {
      "image1": imageconstant.story3,
      "image2": imageconstant.AkashBolre,
      "text": "Akash Bolre"
    },
];
List listtile = [
  {
    "list": imageconstant.Ellipse,
    "text1": "Deven mestry is with Mahesh \n"
        "joshi.",
    "text2": "1 h .  Mumbai, Maharastra .",
    "icon": imageconstant.twopeple,
    "text3": "Old is Gold..!!❤😍",
    "car": imageconstant.oldcar,
    "icon2": imageconstant.like,
    "icon3": imageconstant.Sms1,
    "icon4": imageconstant.sub,
    "text4": "Liked by and 155 others ",
    "text5": "4 Comments",
    "icon5":imageconstant.Blueelike,
    // "list2": imageconstant.msg,

  },
{
"list":imageconstant.tejasphopale,
"text1": "Tejas Phopale updated his profile  \n"
"photo",
"text2": "2 h . Delhi . ",
"icon": imageconstant.erath,
"text3": "",
"car": imageconstant.tejaphoto,
"icon2": imageconstant.like1,
"icon3": imageconstant.Sms1,
"icon4": imageconstant.sub,
"text4": "You, Rakesh Shetty and 130 others ",
"text5": "41 Comments",
"list2":imageconstant.Brooklynprofile,
"icon5":imageconstant.Blueelike,

},
{
"list": imageconstant.Brooklynprofile,
"text1": "Brooklyn Simmons is in Dubai",
"text2": "1 d. ",
"icon": imageconstant.erath,
"text3": "",
"car": imageconstant.Brooklynphoto,
"icon2": imageconstant.like,
"icon3": imageconstant.Sms1,
"icon4": imageconstant.sub,
"text4": "You, Anin Kale and 205 others ",
"text5": "14 Comments",
"list2":imageconstant.profile,
  "icon5":imageconstant.Blueelike,
},
  {
    "list": imageconstant.chetanprofile,
    "text1": "",
    "text2": "6 h .  Pune, Maharastra .",
    "icon": "",
    "text3": "Home coming ❤",
    "car": imageconstant.chetanpost,
    "icon2": imageconstant.like,
    "icon3": imageconstant.Sms1,
    "icon4": imageconstant.sub,
    "text4": "Liked by and 244 others ",
    "text5": "98Comments",
    "list2": imageconstant.profile,
    "icon5":imageconstant.Blueelike,


  }];
List<int> like=[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: width * 0.02,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          height: width * 0.15,
          width: width * 0.18,
          child: Image.asset(
            imageconstant.profile,
          ),
        ),
        Container(
            height: width * 0.1,
            width: width * 0.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  width * 0.04,
                ),
                color: Colorpage.fivecolor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffix: SvgPicture.asset(
                        imageconstant.twophoto,
                      ),
                      hintText: "What’s on your mind, Sanjay?",
                      hintStyle: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                )
              ],
            )),
        Container(

          child: SvgPicture.asset(imageconstant.search, color: Colors.grey),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width * 1),
            color: Colorpage.fivecolor,
          ),
        ),
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: width * 0.09,
            width: width * 0.20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.04),
              color: Colorpage.lightyellow,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(imageconstant.Reel, width: width * 0.07),
                Text("Reels",
                    style: TextStyle(
                        color: Colorpage.yellow, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Container(
            height: width * 0.09,
            width: width * 0.20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.04),
                color: Colorpage.lightgreen),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(imageconstant.room)),
                Text("ROOM",
                    style: TextStyle(
                        color: Colorpage.green, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Container(
            height: width * 0.09,
            width: width * 0.20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.04),
                color: Colorpage.lightorange),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(imageconstant.grops)),
                Text("Group",
                    style: TextStyle(
                        color: Colorpage.orange, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Container(
            height: width * 0.09,
            width: width * 0.20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.04),
                color: Colorpage.lightblue),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(imageconstant.live)),
                Text("LIVE",
                    style: TextStyle(
                        color: Colorpage.blue, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ],
      ),
      Container(
        height: width * 0.53,
        width: width * 1,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: width * 0.45,
                          width: width * 0.30,
                          child: Column(
                            children: [
                              Container(
                                height: width * 0.4,
                                width: width * 0.30,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.04),
                                ),
                                child: Image.asset(
                                  images[index]["image1"],
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: width * 0.32,
                            left: width * 0.12,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                images[index]["image2"],
                              ),
                              backgroundColor: Colors.transparent,
                            ))
                      ],
                    ),
                    Text(
                      images[index]["text"],
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: width * 0.03,
                width: width * 0.03,
              );
            },
            itemCount: images.length),


      ),
              Divider(color: Colorpage.lightgrey,),
              Container(
                  height: width * 4.82,
                  width: width * 1,
                  color: Colorpage.lightgrey,
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
                              Row(
                                children: [
                                  Text(listtile[index]["text3"],style: TextStyle(fontWeight: FontWeight.w600)),
                                ],
                              ),
                              Container(

                                child: Image.asset(listtile[index]["car"],height: width*0.65),),
                              Padding(
                                padding:  EdgeInsets.all(width*0.03),
                                child:   Row(

                                  children: [
                                    InkWell(
                                        onTap:() {
                                      setState(() {
                                        if(like.contains(index)){
                                          like.remove(index);
                                        }else{
                                          like.add(index);
                                          print(like);
                                        }
                                      });
                                    },child: like.contains(index) 
                                        ?SvgPicture.asset(listtile[index]["icon2"])
                                        :SvgPicture.asset(imageconstant.Blueelike)
                                    ),
                                    SizedBox(width: width*0.03,),
                                    SvgPicture.asset(listtile[index]["icon3"]),
                                    SizedBox(width: width*0.03,),
                                    SvgPicture.asset(listtile[index]["icon4"]),


                                  ],



                                ),

                              ),
                              Padding(
                                padding: EdgeInsets.all(width * 0.03),
                                child: Row(
                                  children: [
                                    Container(
                                      width: width * 0.6,
                                      height: width * 0.1,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(width * 0.04),
                                          color: Colorpage.fivecolor),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                              child: TextFormField(
                                                controller: name,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "write a comment.",
                                                  hintStyle:
                                                  TextStyle(fontSize: width * 0.03),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      children: [
                                        SvgPicture.asset(imageconstant.LOVE),

                                        SvgPicture.asset(imageconstant.LOVE,width: width*0.04,),
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



              )]
            ),

        )
    );
  }
}
