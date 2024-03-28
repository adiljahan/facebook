import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/profil_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'main.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();

}

class _splashState extends State<splash> {


  void initState() {


    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) =>Navigator.push(context, MaterialPageRoute(builder: (context) => profile_login(),)));



  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(width*0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: width * 0.8,
                  width: width * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(
                        image: AssetImage(
                          imageconstant.logo,
                        ),
                      ),

                      Center(
                        child: GradientText("Facebook",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w600),
                            colors: [
                              Colorpage.primarycolor,
                              Colorpage.primarycolor,
                            ]),
                      )
                    ],
                  )
              ),
              SizedBox(height: width*0.04,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Container(
                    child: Text("From",style: TextStyle(color: Colorpage.primarycolor2),
              ),
                  ),
                  Image(image: AssetImage(imageconstant.facebook))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
