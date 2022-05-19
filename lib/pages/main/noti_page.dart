import 'package:flutter/material.dart';

class NotiPage extends StatefulWidget {

  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Noti!"),
      ),
    );
  }
}
