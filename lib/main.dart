import 'package:facebook/HOME_screen1.dart';
import 'package:facebook/Home_Screen2.dart';
import 'package:facebook/New_messanger.dart';
import 'package:facebook/login_screen1.dart';
import 'package:facebook/messange_chat.dart';
import 'package:facebook/messanger.dart';
import 'package:facebook/messengerswipe.dart';
import 'package:facebook/personal_profile.dart';
import 'package:facebook/splash.dart';
import 'package:flutter/material.dart';
var width;
var height;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home:Home_Screen2(

      ),

    );
  }
}

