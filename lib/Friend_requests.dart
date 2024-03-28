import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Friend_requests extends StatefulWidget {
  const Friend_requests({super.key});

  @override
  State<Friend_requests> createState() => _Friend_requestsState();
}

class _Friend_requestsState extends State<Friend_requests> {
  bool b=false;
  List a=[
    {
      "images": imageconstant.kiranpawar1,
      "text1": "Kiran Pawar",
      "text2": "1 mutual friend",
      "text3": "9w",
    },
    {
      "images": imageconstant.grayphoto,
      "text1": "Chandresh Yadav",
      "text2": "20 mutual friends",
      "text3": "10w",
    },
    {
      "images": imageconstant.cupboy,
      "text1": "Marvin McKevirn",
      "text2": "1 mutual friend",
      "text3": "12w",
    },
    {
      "images": imageconstant.Bhumipatel,
      "text1": "Bhumi Patel",
      "text2": "19 mutual friend",
      "text3": "19w",
    },
    {
      "images": imageconstant.kiaraparmar,
      "text1": "Kiara Parmar",
      "text2": "37 mutual friend",
      "text3": "20w",
    },
    {
      "images": imageconstant.chandani,
      "text1": "Chandani Champa",
      "text2": "24 mutual friend",
      "text3": "24w",
    },
    {
      "images": imageconstant.chandani,
      "text1": "Kiran Pawar",
      "text2": "1 mutual friend",
      "text3": "9w",
    },
  ];

  @override
  Widget build(BuildContext context) {




    return Scaffold(
        body: Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Friends",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),),
                    SvgPicture.asset(imageconstant.search,color: Colorpage.black,)
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(9),
                child: Row(


                  children: [
                    Container(
                      height: width*0.1,
                      width: width*0.25,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors:[ Colorpage.primarycolor,
                              Colorpage.eigthcolor]),
                        borderRadius: BorderRadius.circular(width*0.03),
                      ),
                      child: Center(
                        child: Text("Suggestions",style: TextStyle(
                          color: Colorpage.fivecolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),
                      ),
                    ),
                    SizedBox(width: width*0.06,),
                    Container(
                      height: width*0.1,
                      width: width*0.25,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors:[Colorpage.primarycolor,
                              Colorpage.eigthcolor]),
                        borderRadius: BorderRadius.circular(width*0.03),
                      ),
                      child: Center(
                        child: Text("Your Friends",style: TextStyle(
                          color: Colorpage.fivecolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Friend request ",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text("400",style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),

                    InkWell(
                      onTap: () {
                        b=!b;
                        setState(() {

                        });
                      },
                      child: Text(b==false?"Sell All":"See Less",style: TextStyle(
                        fontSize: 18,
                        color: Colorpage.primarycolor,
                        fontWeight: FontWeight.w600,
                      ),),
                    ),
                  ],
                ),
              ),
              Container(
                height: width*1.26,
                width:width*0.9 ,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: width*0.2,
                                width: width*0.2,
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(width*0.03,)
                                ),
                                child:Image.asset(a[index]["images"],) ,
                              ),
                              SizedBox(
                                width: width*0.015,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(a[index]["text1"],style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  Text(a[index]["text2"],style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colorpage.thirdcolor
                                  ),),
                                  Row(
                                    children: [
                                      Container(
                                        height: width*0.09,
                                        width: width*0.2,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors:[ Colorpage.primarycolor,
                                                Colorpage.eigthcolor]),
                                          borderRadius: BorderRadius.circular(width*0.03),
                                        ),
                                        child: Center(
                                          child: Text("Confirm",style: TextStyle(
                                            color:Colorpage.fivecolor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width*0.015,
                                      ),
                                      InkWell(onTap: () {
                                        showDialog(context: context, builder: (context) {
                                          return AlertDialog(
                                            title: Text("Confirm delete"),
                                            actions: [
                                            Text("Yes"),
                                            SizedBox(width: width*0.01,),
                                            InkWell(onTap: () {
                                              Navigator.pop(context);
                                            },
                                                child: Text("No"))
                                            ],
                                          );
                                        },);
                                      },
                                        child: Container(
                                          height: width*0.09,
                                          width: width*0.2,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors:[ Colorpage.fivecolor,
                                                Colorpage.fivecolor]),
                                            borderRadius: BorderRadius.circular(width*0.03),
                                          ),
                                          child: Center(
                                            child: Text("Delete",style: TextStyle(
                                              color: Colorpage.secandarycolor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                            ),),
                                          ),
                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),

                            ],
                          ),

                          Text(a[index]["text3"],style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colorpage.tencolor
                          ),),

                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        // width: width*0.04,
                        height: width*0.04,
                      );
                    },
                    itemCount: b==true?a.length:4),
              )
            ],),
    );
  }
}
