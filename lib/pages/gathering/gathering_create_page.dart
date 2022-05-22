import 'package:database_project/pages/gathering/map_set_page.dart';
import 'package:database_project/pages/gathering/my_location_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class GatheringCreatePage extends StatefulWidget {
  static const url = "/map-set-page";

  @override
  State<GatheringCreatePage> createState() => _GatheringCreatePageState();
}

class _GatheringCreatePageState extends State<GatheringCreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gathering'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      'Choose Your Location',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(width: 20),
                    _buildLocationBtn(),
                  ],
                ),
              ),
            ),
          ),
          _buildDestinationBtn(),
          const SizedBox(height: 10),
          _buildFavorite(),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Recent Searches',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 10),
          _buildRecent('Incheon global campus', 'Songdo 1(il)-dong'),
          _buildRecent('Triple Street', 'Incheon, Yeonsu-gu, Songdo-dong'),
          _buildRecent('ABC Mart Incheon', 'Songdo-dong, Gwahak-ro'),
        ],
      ),
    );
  }

  Widget _buildLocationBtn() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          child: RaisedButton(
            elevation: 5.0,
            onPressed: () => Get.toNamed(MapPage.url),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Theme.of(context).primaryColor,
            child: Text(
              'Location',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDestinationBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        width: Get.width,
        height: 100,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () => Get.toNamed(MapSetPage.url),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Where is your destination?',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  letterSpacing: 1.5,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'OpenSans',
                ),
              ),
              FaIcon(
                FontAwesomeIcons.arrowCircleRight,
                size: 17,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFavorite() {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        child: Row(
          children: [
            Text(
              'Favortes : ',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(width: 15),
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
            const SizedBox(width: 15),
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecent(String title, String sub) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListTile(
          onTap: () {},
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              const SizedBox(width: 5),
              Text(
                sub,
                style: TextStyle(color: Colors.grey, fontSize: 9),
              ),
            ],
          ),
          trailing: RaisedButton(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            onPressed: () {},
            child: Text(
              'Depart',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                letterSpacing: 1.5,
                fontSize: 11.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
