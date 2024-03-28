import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';

class Masiy_profile extends StatefulWidget {
  const Masiy_profile({super.key});

  @override
  State<Masiy_profile> createState() => _Masiy_profileState();
}

class _Masiy_profileState extends State<Masiy_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,

      ),
      body: Column(
        children: [
          Container(
            height: width*0.4,
            width: width*1,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imageconstant.chandani,width: width*0.25,),
                SizedBox(
                  height: width*0.04,
                )
              ],

            ),


          ),
          Column(
            children: [
              Text("Name:  Masiy hupheri",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),SizedBox(width: width*0.03,),
              Text("palace:  goa",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),SizedBox(width: width*0.03,),
              Text("ph:  1112223334",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),SizedBox(width: width*0.03,),




            ],


          )

        ],
      ),


    );
  }
}
