import 'package:facebook/Blankpage.dart';
import 'package:facebook/messanger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messengerswipe extends StatefulWidget {
  const messengerswipe({super.key});

  @override
  State<messengerswipe> createState() => _messengerswipeState();
}

class _messengerswipeState extends State<messengerswipe> {
  int selact=0;
  List aa=[
 messanger(),
  Blankpage(),
    Blankpage(),
  ];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                onTap: (value) {
                  selact=value!;
                  setState(() {

                  });

                },
                currentIndex: selact,
                selectedItemColor: Colors.blue,

                showUnselectedLabels: true,
                showSelectedLabels: true,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.messenger_outlined),
                      label: ""),
                  BottomNavigationBarItem(
                      icon:Icon(Icons.groups),
                      label: ""),
                  BottomNavigationBarItem(
                      icon:Icon(CupertinoIcons.compass_fill),
                      label: ""),
                ]),

            body: aa[selact],
            ),
        );
    }
}


