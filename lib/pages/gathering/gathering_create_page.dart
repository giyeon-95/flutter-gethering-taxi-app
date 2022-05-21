import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class GatheringCreatePage extends StatefulWidget {
  @override
  State<GatheringCreatePage> createState() => _GatheringCreatePageState();
}

class _GatheringCreatePageState extends State<GatheringCreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Gathering'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      'Your Location',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 20),
                    ),
                    const  SizedBox(width: 20),
                    _buildBtn('chat'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildBtn(String type) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () => {
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: type == 'chat' ? Theme.of(context).primaryColor : Colors.white,
          child: Text(
            type == 'chat' ? 'Create chat' : 'Go back to home',
            style: TextStyle(
              color: type == 'chat' ? Colors.white : Color(0xFFE66A73),
              letterSpacing: 1.5,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      ),
    );
  }
}
