import 'dart:async';

import 'package:database_project/pages/chat/chat_page.dart';
import 'package:database_project/pages/chat/chat_room_page.dart';
import 'package:database_project/pages/gathering/gathering_ready_page.dart';
import 'package:database_project/pages/main_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class GatheringCreateSuccessPage extends StatefulWidget {
  static const url = "/gathering-create-success-page";

  @override
  State<GatheringCreateSuccessPage> createState() =>
      _GatheringCreateSuccessPageState();
}

class _GatheringCreateSuccessPageState
    extends State<GatheringCreateSuccessPage> {
  String imgUrl1 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8NG8tRjukxvrSbGk2CfWU_aw9yUjpnFqbAoORbc7lZityM2nl';
  String imgUrl2 =
      'https://img.buzzfeed.com/buzzfeed-static/static/2021-07/26/14/campaign_images/4151cddab035/scarlett-johansson-said-she-was-bummed-when-she-w-2-13744-1627310955-9_dblbig.jpg';


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Get.offAndToNamed(GatheringReadyPage.url));
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: Text(
                      'Succeed!',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 30,
                          ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Text(
                    'Please wait for your members...',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                  ),
                ),
                const SizedBox(height: 50),
                LoadingAnimationWidget.threeRotatingDots(
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                const SizedBox(height: 100),

                //현재 모집 명 수
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Current numbers of',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontSize: 15),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'members',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.user,
                              size: 15,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '1/5',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      fontSize: 20,
                                      color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                _buildMemberContainer(),
              ],
            ),
            Row(
              children: [
                Expanded(child: _buildBtn('chat')),
                Expanded(child: _buildBtn('home')),
              ],
            ),
          ],
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Members",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
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
          ],
        ),
      ),
    );
  }

  //버튼
  Widget _buildBtn(String type) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () => {
            if (type == 'chat')
              {Get.toNamed(ChatRoomPage.url)}
            else
              {Get.toNamed(MainTapPage.url)}
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: type == 'chat' ? Theme.of(context).primaryColor : Colors.white,
          child: Text(
            type == 'chat' ? 'Create chat' : 'Go back to home',
            style: TextStyle(
              color: type == 'chat' ? Colors.white : Color(0xFFE66A73),
              letterSpacing: 1.5,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      ),
    );
  }
}
