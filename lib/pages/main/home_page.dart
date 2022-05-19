import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const url = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('메인 페이지'),
        ),
      ),
    );
  }
}
