import 'package:database_project/components/dialog.dart';
import 'package:database_project/pages/etc/write_review_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

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
            _buildListTile(
                'gathering', 'Your gathering is ready!', '2022/06/30'),
            _buildListTile(
                'review', 'What did you think of the member?', '2022/06/05'),
            _buildListTile(
                'payment', 'Mingee joined in gathering', '2022/06/11'),
            _buildListTile('payment', 'You paid 3,000 won', '2022/06/23'),
            _buildListTile('payment', 'You paid 5,000 won', '2022/06/02'),
            _buildListTile('payment', 'You paid 7,000 won', '2022/05/23'),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(String type, String title, String date) {
    return ListTile(
      onTap: () {
        if (type == 'gathering') {
          showDialog(
            context: context,
            builder: (context) {
              return FlutterDialog();
            },
          );
        } else if (type == 'review') {
          return Get.toNamed(WriteReviewPage.url);
        } else {
          return null ;
        }
      },
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                width: 55,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Text(
                      type,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 10, color: Colors.white),
                    ),
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
              const SizedBox(width: 5),
              type == 'gathering'
                  ? FaIcon(
                      FontAwesomeIcons.checkCircle,
                      size: 13,
                      color: Colors.green,
                    )
                  : Container(),
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
