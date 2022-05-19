import 'package:database_project/pages/main/Noti_page.dart';
import 'package:database_project/pages/main/chat_page.dart';
import 'package:database_project/pages/main/home_page.dart';
import 'package:database_project/pages/main/my_page.dart';
import 'package:database_project/pages/main/search_page.dart';
import 'package:flutter/material.dart';

class MainTapPage extends StatefulWidget {
  static const url = "/main-tap";

  @override
  State<MainTapPage> createState() => _MainTapPageState();
}

class _MainTapPageState extends State<MainTapPage> {
  // init page 지정
  int _selectedIndex = 2;

  //이동페이지
  List _pages = [
    SearchPage(),
    ChatPage(),
    HomePage(),
    NotiPage(),
    MyPage(),
  ];

  //tap 갱신
  void _onItemTapped(int index) {
    // state 갱신
    setState(() {
      _selectedIndex = index; // index는 item 순서로 0, 1, 2로 구성
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex], // 페이지와 연결
      ),
      // BottomNavigationBar 위젯
      bottomNavigationBar: BottomNavigationBar(
        // bottomNavigationBar item이 4개 이상일 경우
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Color(0xFFE66A73),

        // 클릭 이벤트
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        // 현재 선택된 index
        // BottomNavigationBarItem 위젯
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: 'Chat', icon: Icon(Icons.chat_bubble_outline)),
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Notification', icon: Icon(Icons.add_alert_outlined)),
          BottomNavigationBarItem(
              label: 'My Page', icon: Icon(Icons.account_circle_outlined)),
        ],
      ),
    );
  }
}
