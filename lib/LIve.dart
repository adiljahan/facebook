import 'package:flutter/material.dart';

class Live extends StatefulWidget {
  const Live({super.key});

  @override
  State<Live> createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("LIVE",style: TextStyle(
          fontWeight:FontWeight.w600,fontSize: 60
        ),),
      ),

    );
  }
}
