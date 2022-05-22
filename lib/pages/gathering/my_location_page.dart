import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MapPage extends StatefulWidget {
  static const url = "/map-page";

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
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
        title: Text('My Location'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/map.jpeg',
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Address',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.grey, fontSize: 14),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            '270 Sinbanpo-ro, Seocho-gu, Seoul',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      // const SizedBox(height: 15),
                      // Text(
                      //   'Apartment complex in Seoul',
                      //   style: Theme.of(context)
                      //       .textTheme
                      //       .bodyText1
                      //       .copyWith(color: Colors.grey, fontSize: 15),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
        backgroundColor: Theme.of(context).primaryColor,
        child: FaIcon(
          FontAwesomeIcons.check,
          size: 15,
          color: Colors.black,
        ),
      ),
    );
  }
}
