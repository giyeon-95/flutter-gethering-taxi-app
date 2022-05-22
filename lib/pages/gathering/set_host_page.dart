import 'package:database_project/pages/gathering/gathering_create_success_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:get/get.dart';

class SetHostPage extends StatefulWidget {
  static const url = "/set-host-page";

  @override
  _SetHostPageState createState() => _SetHostPageState();
}

class _SetHostPageState extends State<SetHostPage> {
  int _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back)),
        title: Text('Set Host'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Departure',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontSize: 15, color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Triple Street',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Incheon, Yeonsu-gu, Songdo-dong',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Arrival',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontSize: 15, color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(width: 35),
                  Text(
                    'Incheon global campus',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Songdo 1(il)-dong',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Estimated Cost'),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '5,000 won',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '/ 1,000 per person',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Member'),
                  const SizedBox(height: 20),
                  NumberPicker(
                    itemHeight: 30,
                    itemWidth: 150,
                    value: _currentValue,
                    minValue: 0,
                    maxValue: 5,
                    onChanged: (value) => setState(() => _currentValue = value),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Time'),
                  const SizedBox(height: 20),
                  Container(
                    height: 60,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      onDateTimeChanged: (value) {},
                      initialDateTime: DateTime.now(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                      child: Text(
                    '~',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
                  const SizedBox(height: 10),
                  Container(
                    height: 60,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      onDateTimeChanged: (value) {},
                      initialDateTime: DateTime.now(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: _buildBtn(),
          ),
        ],
      ),
    );
  }

  Widget _buildBtn() {
    return Container(
      width: Get.width * 1,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Get.toNamed(GatheringCreateSuccessPage.url),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color(0xFFE66A73),
        child: Text(
          'Be the Host ?',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}
