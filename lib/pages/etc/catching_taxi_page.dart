import 'dart:async';

import 'package:database_project/pages/etc/catching_complete_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CatchingTaxi extends StatefulWidget {
  static const url = "/waiting-taxi";

  @override
  State<CatchingTaxi> createState() => _CatchingTaxiState();
}

class _CatchingTaxiState extends State<CatchingTaxi> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Get.offAndToNamed(CatchingCompletePage.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF4EA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Catching Taxi ...',
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 30, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(height: 10),
            Text(
              'Hold on a minute, please.',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 50),
            LoadingAnimationWidget.twoRotatingArc(
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            Image.asset('images/taxi.gif')
          ],
        ),
      ),
    );
  }
}
