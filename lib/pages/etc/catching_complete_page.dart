import 'package:database_project/pages/chat/chat_room_page.dart';
import 'package:database_project/pages/main_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class CatchingCompletePage extends StatefulWidget {
  static const url = "/complete-taxi";

  @override
  State<CatchingCompletePage> createState() => _CatchingCompletePageState();
}

class _CatchingCompletePageState extends State<CatchingCompletePage> {
  String imgUrl1 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8NG8tRjukxvrSbGk2CfWU_aw9yUjpnFqbAoORbc7lZityM2nl';
  String imgUrl2 =
      'https://img.buzzfeed.com/buzzfeed-static/static/2021-07/26/14/campaign_images/4151cddab035/scarlett-johansson-said-she-was-bummed-when-she-w-2-13744-1627310955-9_dblbig.jpg';
  String imgUrl3 =
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRQp4lhDaU5euiz73rltdxnoREBGhyvYIBp0LrESI09k9cLLmkB';
  String imgUrl4 =
      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSZ6TeDFGGXiuKR36W9VBw93YeRuOf_-eaDmfqJ1InJONlGKnqV';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Gathering Completed!',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 30, color: Colors.grey
                              // color: Theme.of(context).primaryColor,
                              ),
                    ),
                  ),
                  _buildInfoContainer(),
                  _buildMemberContainer(),
                ],
              ),
              _buildLoginBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMemberContainer() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Members",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl1),
              ),
              title: Text(
                'Minjee',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 13),
              ),
              subtitle: Text(
                '010-2222-0000',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 11),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.angleRight,
                size: 17,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl2),
              ),
              title: Text(
                'Hajin',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 13),
              ),
              subtitle: Text(
                '010-1234-0000',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 11),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.angleRight,
                size: 17,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl3),
              ),
              title: Text(
                'Jason',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 13),
              ),
              subtitle: Text(
                '010-3333-0000',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 11),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.angleRight,
                size: 17,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl4),
              ),
              title: Text(
                'Haven',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 13),
              ),
              subtitle: Text(
                '010-2222-0000',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 11),
              ),
              trailing: FaIcon(
                FontAwesomeIcons.angleRight,
                size: 17,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1.0, 1.0), //(x,y)
            blurRadius: 1.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FROM
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  "Triple Street Back Gate",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // TO
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'To',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Text(
                  "Suny Korea",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ],
            ),

            const SizedBox(height: 5),

            //TIME
            Row(
              children: [
                Text(
                  "Time (expectation) : ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(width: 10),
                Text(
                  "10:30 AM - 10:40 AM",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),

            const SizedBox(height: 5),

            //PEOPLE RECRUITED
            Row(
              children: [
                Text(
                  "People Recruited : ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(width: 10),
                Text(
                  "5",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 5),

            //ESTIMATED COST
            Row(
              children: [
                Text(
                  "Estimated Cost : ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(width: 10),
                Text(
                  "11,000",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                Text(
                  "/ 2,000 won per person",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(),
                ),
              ],
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0.0),
            width: double.infinity,
            child: RaisedButton(
              elevation: 5.0,
              onPressed: () => Get.toNamed(ChatRoomPage.url),
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(0xFFE66A73),
              child: Text(
                'Create Chat',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () => Get.offAllNamed(MainTapPage.url),
          child: Text(
            'Go to Main Page',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
