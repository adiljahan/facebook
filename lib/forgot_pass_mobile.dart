import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/forgot_pass_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Constant/constan_color.dart';
import 'main.dart';

class forgot_pass_mobile extends StatefulWidget {
  final String email;
  final String password;
  const forgot_pass_mobile({super.key,
    required this.email,
    required this.password});

  @override
  State<forgot_pass_mobile> createState() => _forgot_pass_mobileState();
}

class _forgot_pass_mobileState extends State<forgot_pass_mobile> {
  TextEditingController numcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Center(
        child: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {});
            },
            child: SvgPicture.asset(imageconstant.Backicon)),
      ),

      // centerTitle: true,
      title: Text(
        "Find Your Account",
        style: TextStyle(fontSize: 15, color: Colorpage.secandarycolor),
      ),
    ),
       body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(
        width: width * 1,
        height: width * 0.5,
        margin: EdgeInsets.all(width * 0.06),
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        Center(
        child: Text(
        "Enter your phone number",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        )),
],),
    ),
          Container(
            height: width*0.9,
            child: Column(
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width * 0.8,
                      child: Expanded(
                        child: TextFormField(
                          controller: numcontroller,
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: "Mobile Number",
                            labelStyle: TextStyle(
                                fontSize: width * 0.04, color: Colorpage.primaryColor),
                            suffixIcon: Icon(Icons.clear),
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


            InkWell
              (     onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>forgot_pass_email(),));setState(() {

              });
            },
                  child: Container(

                    height: width*0.12,
                    width: width*0.8,

                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colorpage.primarycolor,Colorpage.fourthcolor],begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),



                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(child: Text("Find Your Account",style: TextStyle(color:Colorpage.fivecolor),)),



                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: width*0.06,),
          Text("Search by email insted",style: TextStyle(color: Colorpage.primaryColor),),


       ]
        ),


)
    );
  }
}
