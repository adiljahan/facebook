import 'package:flutter/material.dart';

class follow extends StatefulWidget {
  const follow({super.key});

  @override
  State<follow> createState() => _followState();
}

class _followState extends State<follow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Follow",style: TextStyle(
            fontWeight:FontWeight.w600,fontSize: 60
        ),),
      ),

    );
  }
}
