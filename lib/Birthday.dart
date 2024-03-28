import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Gender.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:facebook/Constant/constant_image.dart';

class Birthday extends StatefulWidget {
  const Birthday({super.key});

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  int age = 0;
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    var imageconstant1;
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
          "Birthday",
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
              padding: EdgeInsets.all(width * 0.2),
              child: Text(
                "What’s your birthday?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            )),
            SizedBox(
              height: width * 0.08,
            ),
            Text(
              "Choose your date of birth\nYou can always make this private later",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              width: width * 0.6,
              child: DatePickerWidget(
                looping: false,
                firstDate: DateTime(1990, 1, 1),
                lastDate: DateTime.now(),
                initialDate: DateTime.now(),
                dateFormat: "dd/MMMM/yyyy",
                onChange: (DateTime newDate, _) {
                  age=DateTime.now().difference(newDate).inDays~/365;
                  setState(() {});
                  print(_selectedDate);
                },
                pickerTheme: DateTimePickerTheme(
                  backgroundColor: Colors.white24,
                  itemTextStyle: TextStyle(
                    color: Colorpage.secandarycolor,
                    fontSize: 20,
                  ),
                  dividerColor: Colorpage.secandarycolor,
                ),
              ),
            ),
            Container(
              height: width * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$age Year old",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Gender(),
                        ),
                      );
                      setState(() {});
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
