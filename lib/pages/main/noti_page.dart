import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotiPage extends StatefulWidget {
  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Container(
        child: Column(
          children: [
            _buildListTile('You paid 3,000 won', '2022/05/23'),
            _buildListTile('Mingee joined in gathering', '2022/05/23'),
            _buildListTile('Review', '2022/05/23'),
            _buildListTile('You paid 3,000 won', '2022/05/23'),
            _buildListTile('You paid 3,000 won', '2022/05/23'),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(String title, String date) {
    return ListTile(
      onTap: () {},
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Text(
                    'payment',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 13),
              ),
            ],
          ),
          Text(
            date,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: 11, color: Colors.grey),
          ),
        ],
      ),
      trailing: FaIcon(
        FontAwesomeIcons.angleRight,
        size: 17,
        color: Colors.black,
      ),
    );
  }
}
