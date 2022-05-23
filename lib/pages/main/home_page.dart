import 'package:database_project/pages/gathering/gthering_datail_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatefulWidget {
  static const url = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today\'s Gathering Updates'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          children: [
            ListTile(
              title: _buildHomeContainer(
                  from: "Triple Street Back Gate",
                  to: "Suny Korea",
                  left: "3",
                  limit: "/5",
                  time: "10:30 AM - 10:40 AM",
                  people: "5",
                  cost: "5,000",
                  costPer: "/ 1,000 won per person"),
              onTap: () {
                Get.toNamed(GatheringDetailPage.url);
              },
              // selected: true,
            ),
            ListTile(
              title: _buildHomeContainer(
                  from: "Bus Terminal",
                  to: "Songdo Yonsei University",
                  left: "1",
                  limit: "/4",
                  time: "14:00 PM - 2:30 PM",
                  people: "4",
                  cost: "11,000",
                  costPer: "/ 3,000 won per person"),
              onTap: () {
                Get.toNamed(GatheringDetailPage.url);
              },
              // selected: true,
            ),
            ListTile(
              title: _buildHomeContainer(
                  from: "Gangnam 1 Cha APT Gate 2",
                  to: "CheongDam Lotte Cinema",
                  left: "2",
                  limit: "/4",
                  time: "9:30 AM - 10:30 AM",
                  people: "4",
                  cost: "4,000",
                  costPer: "/ 1,000 won per person"),
              onTap: () {
                Get.toNamed(GatheringDetailPage.url);
              },
              // selected: true,
            ),
            ListTile(
              title: _buildHomeContainer(
                  from: "Triple Street Back Gate",
                  to: "Suny Korea",
                  left: "1",
                  limit: "/5",
                  time: "10:30 AM - 10:40 AM",
                  people: "5",
                  cost: "5,000",
                  costPer: "/ 1,000 won per person"),
              onTap: () {
                Get.toNamed(GatheringDetailPage.url);
              },
              // selected: true,
            ),
            ListTile(
              title: _buildHomeContainer(
                  from: "Triple Street Back Gate",
                  to: "Suny Korea",
                  left: "0",
                  limit: "/5",
                  time: "10:30 AM - 10:40 AM",
                  people: "5",
                  cost: "5,000",
                  costPer: "/ 1,000 won per person"),
              onTap: () {
                Get.toNamed(GatheringDetailPage.url);
              },
              // selected: true,
            ),
            ListTile(
              title: _buildHomeContainer(
                  from: "Triple Street Back Gate",
                  to: "Suny Korea",
                  left: "3",
                  limit: "/5",
                  time: "10:30 AM - 10:40 AM",
                  people: "5",
                  cost: "5,000",
                  costPer: "/ 1,000 won per person"),
              onTap: () {
                Get.toNamed(GatheringDetailPage.url);
              },
              // selected: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeContainer(
      {String from,
      String to,
      String left,
      String limit,
      String time,
      String people,
      String cost,
      String costPer}) {
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
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.userAlt,
                          size: 11,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          left,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Text(
                          limit,
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  from,
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
                  to,
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
                  time,
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

                //TODO: 숫자 하이라이트 주기
                Text(
                  people,
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
                  cost,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                Text(
                  costPer,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(),
                ),
              ],
            ),
            const SizedBox(height: 5),

            //Date
            Align(
              alignment: Alignment.centerRight,
              child: const Text(
                '2022/06/12',
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            )
          ],
        ),
      ),
    );
  }
}
