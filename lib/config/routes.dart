import 'package:database_project/pages/auth/signup_page.dart';
import 'package:database_project/pages/auth/signin_page.dart';
import 'package:database_project/pages/chat/chat_room_page.dart';
import 'package:database_project/pages/main/home_page.dart';
import 'package:database_project/pages/main_tab_page.dart';
import 'package:database_project/pages/splash_page.dart';
import 'package:get/route_manager.dart';


routes () => [

  //Splash
  GetPage(name: SplashPage.url, page: () => SplashPage()),

  //AUTH
  GetPage(name: SignInPage.url, page: () => SignInPage()),
  GetPage(name: SignUpPage.url, page: () => SignUpPage()),

  //main
  GetPage(name: MainTapPage.url, page: () => MainTapPage()),


  //CHAT
  GetPage(name: ChatRoomPage.url, page: () => ChatRoomPage()),
];