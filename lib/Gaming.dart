import 'package:flutter/material.dart';

class Gaming extends StatefulWidget {
  const Gaming({super.key});

  @override
  State<Gaming> createState() => _GamingState();
}

class _GamingState extends State<Gaming> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Center(
        child: Text("Game",style: TextStyle(
            fontWeight:FontWeight.w600,fontSize: 60
        ),),
      ),

    );


  }
}

