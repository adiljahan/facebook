import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/login_screen1.dart';
import 'package:facebook/main.dart';
import 'package:facebook/whats_Yourname.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class joinfacebook extends StatefulWidget {
  const joinfacebook({super.key});

  @override
  State<joinfacebook> createState() => _joinfacebookState();
}

class _joinfacebookState extends State<joinfacebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
          backgroundColor: Colors.white,
          leading: Container(
            child: Center(
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {});
                  },
                  child: SvgPicture.asset(imageconstant.Backicon)),
            ),
          ),

          // centerTitle: true,
          title: Text(
            "Creat account",
            style: TextStyle(fontSize: 15, color: Colorpage.secandarycolor),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Image(image: AssetImage(imageconstant.groupphoto))),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Join Facebook",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: width * 0.09,
              ),
              Center(
                  child: Text(
                "We’ll help you ",
                style: TextStyle(color: Colorpage.secandarycolor),
              )),
              Text(
                "create a new account in a few easy steps",
                style: TextStyle(color: Colorpage.secandarycolor),
              ),
            ],
          ),
          Container(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => what_Yourname(),
                  ),
                );
                setState(() {});
              },
              child: Container(
                height: width * 0.12,
                width: width * 0.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colorpage.primarycolor, Colorpage.fourthcolor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "Next",
                  style: TextStyle(color: Colorpage.fivecolor),
                )),
              ),
            ),
          ),
          SizedBox(
            height: width * 0.3,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_screen1()));
              },
              child: Container(
                  child: Text(
                "Alredy have an account?",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colorpage.primarycolor),
              )))
        ],
      ),
    );
  }
}
