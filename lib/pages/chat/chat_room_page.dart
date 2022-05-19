import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ChatRoomPage extends StatefulWidget {
  static const url = "/chat-room";

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  String imgUrl1 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8NG8tRjukxvrSbGk2CfWU_aw9yUjpnFqbAoORbc7lZityM2nl';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CHAT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                _buildLeftBalloon(),
                _buildLeftBalloon(),
                _buildRightBalloon(),
                _buildLeftBalloon(),
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

  Widget _buildLeftBalloon() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imgUrl1),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).primaryColor, width: 1.5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text('Shall We Dance? ',
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRightBalloon() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Container(
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text('Shall We Dance? ',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.bodyText1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
