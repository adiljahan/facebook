import 'package:facebook/Birthday.dart';
import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class what_Yourname extends StatefulWidget {
  const what_Yourname({super.key});

  @override
  State<what_Yourname> createState() => _what_YournameState();
}

class _what_YournameState extends State<what_Yourname> {
  TextEditingController nameController=TextEditingController();
  TextEditingController nameController1=TextEditingController();
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

        // centerTitle: true,
        title: Text(
          "Creat account",
          style: TextStyle(fontSize: 15, color: Colorpage.secandarycolor),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              width: width*1,
                height: width*0.5,
                margin: EdgeInsets.all(width*0.06),
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                          "Whay’s your name?",style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.w600),
                        )),

                    Text("Enter the name you use in real life.",style: TextStyle(fontSize: 15,


                    ),
                    ),


                  ],
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: width*0.12,
                            width: width*0.4,
                            child: TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                label: Text("Fist Name"),
                                suffixIcon: Icon(Icons.clear),
                                border: UnderlineInputBorder(),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colorpage.lightsecondaryColor,
                                    )
                                ),

                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),


                                fillColor: Colors.white,
                                filled: true,



                              ),

                            ),
                          ),
                          Container(
                            height: width*0.12,
                            width: width*0.4,
                            child: TextFormField(
                              controller: nameController1,
                              decoration: InputDecoration(
                                label: Text("Last Name"),
                                suffixIcon: Icon(Icons.clear),
                                border: UnderlineInputBorder(),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )
                                ),

                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),


                                fillColor: Colors.white,
                                filled: true,



                              ),

                            ),
                          ),




                        ],


                      ),
                    ],
                  ),
                  width: width*0.9,
                  margin: EdgeInsets.only(left: 0.02,right: 0.02),
                  height: width*0.8,
                  // color: Colors.red,
                ),
              ],

            ),
        Column(

          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Birthday(),),);
                setState(() {

                });
              },
              child: InkWell(
                onTap: () {
    if ( nameController.text.isNotEmpty &&
    nameController1.text.isNotEmpty) {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Birthday(),
    ));
    } else {
    nameController1.text.isEmpty
    ? ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
    content: Text("Please enter the name")))
        : ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
    content: Text("Please enter the last name")));
    }

    setState(() {});
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
                        child: Center(child: Text("Next",style: TextStyle(color:Colorpage.fivecolor),)),

                      ),
              ),
            ),
          ],
        ),




          ],

        ),
      ),
    );
  }
}
