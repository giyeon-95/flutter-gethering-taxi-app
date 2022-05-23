import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.settings),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: FaIcon(
                      FontAwesomeIcons.user,
                      size: 17,
                      color: Colors.grey,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      primary: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text('example@google.com'),
                ],
              ),
              const SizedBox(height: 20),
              _buildListTile('Account Information'),
              _buildListTile('Announcement'),
              _buildListTile('Event'),
              _buildListTile('Payment method management'),
              _buildListTile('Mileage'),
              _buildListTile('Coupons'),
              _buildListTile('Set favorite place'),
              _buildListTile('language'),
              _buildListTile('terms and conditions'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(String title) {
    return ListTile(
      onTap: () {},
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 17),
      ),
      trailing: FaIcon(
        FontAwesomeIcons.angleRight,
        size: 17,
        color: Colors.black,
      ),
    );
  }
}
