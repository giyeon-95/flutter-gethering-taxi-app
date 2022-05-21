import 'package:database_project/config/routes.dart';
import 'package:database_project/pages/gathering/gathering_create_success_page.dart';
import 'package:database_project/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.light().copyWith(
        // backgroundColor: Color(0xff5C5D75),
        primaryColor: Color(0xFFE66A73),
        textTheme: TextTheme(
          button: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w200,
            fontSize: 13,
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Color(0xFFE66A73),
          ),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'Helvetica',
            fontSize: 17,
            color: Colors.black,
          ),
          // centerTitle: true,
          color: Colors.white,
        ),
      ),
      getPages: routes(),
      initialRoute: SplashPage.url,
    );
  }
}
