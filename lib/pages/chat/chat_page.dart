import 'package:database_project/pages/chat/chat_room_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String imgUrl1 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8NG8tRjukxvrSbGk2CfWU_aw9yUjpnFqbAoORbc7lZityM2nl';
  String imgUrl2 =
      'https://img.buzzfeed.com/buzzfeed-static/static/2021-07/26/14/campaign_images/4151cddab035/scarlett-johansson-said-she-was-bummed-when-she-w-2-13744-1627310955-9_dblbig.jpg';
  String imgUrl3 =
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRQp4lhDaU5euiz73rltdxnoREBGhyvYIBp0LrESI09k9cLLmkB';
  String imgUrl4 =
      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSZ6TeDFGGXiuKR36W9VBw93YeRuOf_-eaDmfqJ1InJONlGKnqV';
  String imgUrl5 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp4OuyDSyetsQHOMwPfF8wex5DYWnBYAPqj7Z5MYR-yPxsf-Gi';
  String imgUrl6 =
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT_a31fWXQOuNixOPQcq6KHO0uDYM-3NY0_BiMLFxkYblmVLxhX';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('CHAT', style: TextStyle(color: Colors.black),),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, bottom: 5),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.black,
                ),
                onPressed: () {
                  print('wow');
                },
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl1),
              ),
              title:
              Text('Jenny', style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1),
              subtitle: Text('Hello My friend!'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Get.toNamed(ChatRoomPage.url);
              },
              // selected: true,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl2),
              ),
              title:
              Text('Michel', style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1),
              subtitle: Text('Hello My friend!'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Get.toNamed(ChatRoomPage.url);
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl3),
              ),
              title: Text('Tony', style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1),
              subtitle: Text('Hello My friend!'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Get.toNamed(ChatRoomPage.url);
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl4),
              ),
              title:
              Text('Robert', style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1),
              subtitle: Text('Hello My friend!'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Get.toNamed(ChatRoomPage.url);
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl5),
              ),
              title: Text('Mark', style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1),
              subtitle: Text('Hello My friend!'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Get.toNamed(ChatRoomPage.url);
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl6),
              ),
              title: Text('Philippe',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText1),
              subtitle: Text('Hello My friend!'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Get.toNamed(ChatRoomPage.url);
              },
            ),
          ],
        ));
  }
}
