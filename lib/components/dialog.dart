import 'package:database_project/pages/etc/catching_taxi_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class FlutterDialog extends StatefulWidget {
  @override
  State<FlutterDialog> createState() => _FlutterDialogState();
}

class _FlutterDialogState extends State<FlutterDialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("Would you like to call a taxi?"),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Payment cannot be canceled."),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.exclamationCircle,
                size: 13,
                color: Colors.orange,
              ),
              const SizedBox(width: 5),
              Text(
                "No refund even if you cancel your gathering",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
      actions: [
        CupertinoDialogAction(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        CupertinoDialogAction(
          child: Text("Continue"),
          onPressed: () =>
          {
            print('엥'),
            Navigator.of(context).pop(),
            Get.toNamed(CatchingTaxi.url)
          },
        )
      ],
    );
  }
}
