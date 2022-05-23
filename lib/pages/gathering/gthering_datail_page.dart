import 'package:database_project/pages/gathering/gathering_join_success_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class GatheringDetailPage extends StatefulWidget {
  static const url = "/gathering-detail-page";

  @override
  State<GatheringDetailPage> createState() => _GatheringDetailPageState();
}

class _GatheringDetailPageState extends State<GatheringDetailPage> {
  String imgUrl1 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8NG8tRjukxvrSbGk2CfWU_aw9yUjpnFqbAoORbc7lZityM2nl';

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
        title: Text('Gethering'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl1),
                  ),
                  const SizedBox(width: 10),
                  Text('Eugeno Ko')
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Departure',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 15),
                Text(
                  'Triple Street back gate',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                const SizedBox(width: 15),
                Text(
                  'Songdo 1(il)-dong',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),

            //Arrival
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Arrival',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 40),
                Text(
                  'Suny Korea',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                const SizedBox(width: 15),
                Text(
                  'Songdo-dong, Munhwa-ro',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),

            //Time
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Time',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 48),
                Text(
                  '10:30 AM - 10:40 AM',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                const SizedBox(width: 15),
                Text(
                  '(expectation)',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),

            //Estimated Cost
            const SizedBox(height: 20),
            Text(
              'Estimated Cost',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '5,000 won',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                const SizedBox(height: 30),
                Text(
                  ' / 1,000 won per person',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),

            //People Recuited
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'People Recruited',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(width: 48),
                Text(
                  '5',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
            const SizedBox(height: 15),
            //image
            Container(
              width: Get.width * 1,
              height: Get.height * .4,
              child: Image.asset(
                'images/map3.png',
              ),
            ),

            const SizedBox(height: 10),
            Container(
              width: Get.width,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () => Get.toNamed(GatheringJoinSuccessPage.url),
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color(0xFFE66A73),
                child: Text(
                  'Join',
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
          ],
        ),
      ),
    );
  }
}
