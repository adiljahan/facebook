import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/Friend_requests.dart';
import 'package:facebook/Home_Screen2.dart';
import 'package:facebook/Menu.dart';

import 'package:facebook/Notificationspage.dart';
import 'package:facebook/messengerswipe.dart';
import 'package:facebook/personal_profile.dart';
import 'package:facebook/watch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'main.dart';

class HOME_screen1 extends StatefulWidget {
  const HOME_screen1({super.key});

  @override
  State<HOME_screen1> createState() => _HOME_screen1State();
}

class _HOME_screen1State extends State<HOME_screen1> {
  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText("facebook", colors: [
                Colorpage.primarycolor,
                Colorpage.fourthcolor,
              ]),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>messengerswipe() ,));
                },
                  child: SvgPicture.asset(imageconstant.fbmsg)),
            ],
          ),
          bottom: TabBar(
            tabs: [
            Tab(child:SvgPicture.asset(imageconstant.home)),
        Tab(child:  SvgPicture.asset(imageconstant.Group)),
        Tab(child:   SvgPicture.asset(imageconstant.single)),
        Tab(child:   SvgPicture.asset(imageconstant.youtub)),
        Tab(child:  SvgPicture.asset(imageconstant.bellicons)),
        Tab(child:  SvgPicture.asset(imageconstant.menu)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Home_Screen2(),
          Friend_requests(),
          personal_profile(),
          watch_Screen(),
          Notificationspage(),
          Menu(),


        ],),
backgroundColor: Colors.white10,
      ),

    );
  }
}
