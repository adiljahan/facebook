import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Gaming.dart';
import 'package:facebook/LIve.dart';
import 'package:facebook/Music.dart';
import 'package:facebook/follow.dart';
import 'package:facebook/for_you.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';

class watch_Screen extends StatefulWidget {
  const watch_Screen({super.key});

  @override
  State<watch_Screen> createState() => _watch_ScreenState();
}

class _watch_ScreenState extends State<watch_Screen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 5,
        child: Scaffold(
            body: Padding(
              padding:  EdgeInsets.only(left:width*0.03,right: width*0.03),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Watch",style:TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                      ),),
                    ],
                  ),
                  SizedBox(height: width*0.02,),
                  Container(
                    width: width*2,
                    height: width*0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.03),
                        gradient: LinearGradient(colors: [Colorpage.primarycolor,Colorpage.eigthcolor])
                    ),
                    child: TabBar(

                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(child: Text("for you",style: TextStyle(fontSize: width*0.03),),),
                          Tab(child: Text("live",style: TextStyle(fontSize: width*0.03),),),
                          Tab(child: Text("music",style: TextStyle(fontSize: width*0.03),),),
                          Tab(child: Text("game",style: TextStyle(fontSize: width*0.03),),),
                          Tab(child: Text("follow",style: TextStyle(fontSize: width*0.03),),),

                        ]),
                  ),
                  Expanded(
                      child: TabBarView(
                          children: [
                            for_you(),
                            Live(),
                            Music(),
                            Gaming(),
                            follow(),


                          ]))
                ],
              ),
            ),
            ),
        );



  }
}
