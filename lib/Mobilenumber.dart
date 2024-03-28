import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'Constant/constan_color.dart';
import 'main.dart';

class Mobilenumber extends StatefulWidget {
  const Mobilenumber({super.key});

  @override
  State<Mobilenumber> createState() => _MobilenumberState();
}

class _MobilenumberState extends State<Mobilenumber> {
  TextEditingController numcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final phonevalidation=RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
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
              child: Container(



                  child: SvgPicture.asset(imageconstant.Backicon))),
        ),

        // centerTitle: true,
        title: Text(
          "Mobile number",
          style: TextStyle(fontSize: 15, color: Colorpage.secandarycolor),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      "Enter your mobile number",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )),
                    Text(
                      "Enter the mobile number where you can be reached\n           No one else will see this on your profile",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: width * 0.48,
                width: width * 0.8,
                child: Expanded(
                  child: TextFormField(
                    maxLength: 10,
                    inputFormatters: [LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly],
                    controller: numcontroller,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (!phonevalidation.hasMatch(value!)) {
                        return "please enter number";
                      } else {
                        return null;
                      }
                      },
                    decoration: InputDecoration(
                      labelText: "Mobile Number",
                      labelStyle: TextStyle(
                          fontSize: width * 0.04, color: Colorpage.primaryColor),
                      suffixIcon: InkWell(
                          onTap: () {
                            numcontroller.text="";
                                setState(() {

                                });
                          },child: Icon(Icons.clear)),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),

                      ),
                    ),
                  ),
                ),
              ),
              InkWell(onTap: (){
                if(
                numcontroller.toString()!=""&&
                    formKey.currentState!.validate()
                ) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => password(),));
                }else{
                  numcontroller.toString() == "" ? ScaffoldMessenger.of(
                      context).showSnackBar(SnackBar(content: Text(
                      "please enter your mobile number"))) :
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("enter your valid details")));
                }
                },
                  child: Container(

                    height: width * 0.12,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.red,
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
            ],
          ),
        ),
      ),
    );
  }
}
