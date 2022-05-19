import 'package:flutter/material.dart';

class NursesScreen extends StatefulWidget {
  @override
  _NursesScreenState createState() => _NursesScreenState();
}

class _NursesScreenState extends State<NursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6F90C3),
        title: Text("간호사조회"),
      ),
    );
  }
}
