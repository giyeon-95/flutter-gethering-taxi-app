import 'package:database_project/pages/gathering/set_host_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MapSetPage extends StatefulWidget {
  static const url = "/map-set-page";

  @override
  _MapSetPageState createState() => _MapSetPageState();
}

class _MapSetPageState extends State<MapSetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF4EA),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'images/map2.jpeg',
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Triple Street',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).primaryColor,
                            fontSize: 17),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Incheon, Yeonsu-gu, Songdo-dong',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'To',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(width: 28),
                      Text(
                        'Incheon Global Campus',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).primaryColor,
                            fontSize: 17),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Songdo 1(il)-dong',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            //TODO: 집, 회사, 글캠 아이콘 추가하기
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  RaisedButton(
                    elevation: 5.0,
                    onPressed: () => {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.home,
                          size: 11,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            letterSpacing: 1.5,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  RaisedButton(
                    elevation: 5.0,
                    onPressed: () => {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.building,
                          size: 11,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Company',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            letterSpacing: 1.5,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  RaisedButton(
                    elevation: 5.0,
                    onPressed: () => {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.school,
                          size: 11,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'School',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            letterSpacing: 1.5,
                            fontSize: 11.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: Get.width * 1,
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () => Get.toNamed(SetHostPage.url),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.user,
                        size: 17,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Set Host',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
