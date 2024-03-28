import 'package:flutter/material.dart';

class Blankpage extends StatefulWidget {
  const Blankpage({super.key});

  @override
  State<Blankpage> createState() => _BlankpageState();
}

class _BlankpageState extends State<Blankpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
