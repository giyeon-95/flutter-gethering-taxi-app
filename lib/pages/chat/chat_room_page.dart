import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class ChatRoomPage extends StatefulWidget {
  static const url = "/chat-room";

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {

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
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back)),
        title: Row(
          children: [
            Text(
              'Bus Terminal',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Theme.of(context).primaryColor, fontSize: 13),
            ),
            const SizedBox(width: 10),
            FaIcon(
              FontAwesomeIcons.caretRight,
              size: 11,
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Text(
              'Songdo Yonsei University',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Theme.of(context).primaryColor, fontSize: 13),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                _buildLeftBalloon("15:20", imgUrl1, "Hi"),
                _buildLeftBalloon("15:25", imgUrl2,  "Hello"),
                _buildRightBalloon("15:30"),
                _buildLeftBalloon("15:40", imgUrl3,   "Where are you right now ?"),
                _buildLeftBalloon("15:40", imgUrl4, 'I\'m still at home.. sry'),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLeftBalloon(String time, String url,  String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.5),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Text(text,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRightBalloon(String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Row(
              children: [
                Text(
                  time,
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.5),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Text('Hi!',
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
