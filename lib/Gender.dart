import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/Mobilenumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Constant/constan_color.dart';
import 'main.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Center(
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
                setState(() {});
              },
              child: SvgPicture.asset(imageconstant.Backicon)),
        ),
        title: Text(
          "gender",
          style: TextStyle(
            color: Colorpage.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Padding(
                  padding:  EdgeInsets.all(width*0.1,),
                  child: Text(
              "What,s your gender",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
                )),
            SizedBox(
              height: width * 0.08,
            ),
            Text(
              "You can change who sees your gennder on your profile later.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: width * 0.2,
            ),
            Container(
              // height: width*0.8,
              child: Padding(
                padding: EdgeInsets.all(width * 0.08),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "famele",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          fillColor: MaterialStatePropertyAll(Colorpage.blue),
                          value: "female",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        )
                      ],
                    ),
                    Divider(thickness: width * 0.003),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          fillColor: MaterialStatePropertyAll(Colorpage.blue),
                          value: "Male",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                              print(value);
                            });
                          },
                        )
                      ],
                    ),
                    Divider(thickness: width * 0.003),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Custom",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          fillColor: MaterialStatePropertyAll(Colorpage.blue),
                          value: "Custom",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Select custome to choose another gender\nor if you’d rather not say")
                      ],
                    ),
                    Divider(thickness: width * 0.003),
                    SizedBox(
                      height: width * 0.06,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mobilenumber(),
                          ),
                        );
                        setState(() {});
                      },
                      child: InkWell(
                        onTap: () {
    if(gender!=null
    ) {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Mobilenumber(),
    ));
    }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Select Genter")));
    }

                        },
                        child: Container(
                          height: width * 0.12,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colorpage.primarycolor,
                                  Colorpage.fourthcolor
                                ],
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
