import 'package:flutter/material.dart';

class ReservationScreen extends StatefulWidget {
  final ScrollController scrollController;
  ReservationScreen({this.scrollController});

  @override
  _ReservationScreenState createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6F90C3),
        title: Text(
          "진료예약",
        ),
      ),
    );
  }
}
