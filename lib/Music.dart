import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: Center(
        child: Text("Music",style: TextStyle(
            fontWeight:FontWeight.w600,fontSize: 60
        ),),
      ),

    );
  }
}
