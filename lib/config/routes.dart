import 'package:database_project/pages/auth/add_payment_page.dart';
import 'package:database_project/pages/auth/signup_page.dart';
import 'package:database_project/pages/auth/signin_page.dart';
import 'package:database_project/pages/chat/chat_room_page.dart';
import 'package:database_project/pages/etc/catching_complete_page.dart';
import 'package:database_project/pages/etc/catching_taxi_page.dart';
import 'package:database_project/pages/etc/write_review_page.dart';
import 'package:database_project/pages/main/home_page.dart';
import 'package:database_project/pages/main_tab_page.dart';
import 'package:database_project/pages/splash_page.dart';
import 'package:get/route_manager.dart';


routes () => [


  GetPage(name: CatchingTaxi.url, page: () => CatchingTaxi()),
  GetPage(name: CatchingCompletePage.url, page: () => CatchingCompletePage()),

  //Splash
  GetPage(name: SplashPage.url, page: () => SplashPage()),

  //AUTH
  GetPage(name: SignInPage.url, page: () => SignInPage()),
  GetPage(name: SignUpPage.url, page: () => SignUpPage()),
  GetPage(name: AddPaymentPage.url, page: () => AddPaymentPage()),

  //main
  GetPage(name: MainTapPage.url, page: () => MainTapPage()),


  //CHAT
  GetPage(name: ChatRoomPage.url, page: () => ChatRoomPage()),

  //REVIEW
  GetPage(name: WriteReviewPage.url, page: () => WriteReviewPage()),
];