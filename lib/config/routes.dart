import 'package:database_project/pages/auth/add_payment_page.dart';
import 'package:database_project/pages/auth/signup_page.dart';
import 'package:database_project/pages/auth/signin_page.dart';
import 'package:database_project/pages/chat/chat_room_page.dart';
import 'package:database_project/pages/etc/catching_complete_page.dart';
import 'package:database_project/pages/etc/catching_taxi_page.dart';
import 'package:database_project/pages/etc/write_review_page.dart';
import 'package:database_project/pages/gathering/gathering_create_success_page.dart';
import 'package:database_project/pages/gathering/gathering_join_success_page.dart';
import 'package:database_project/pages/gathering/gthering_datail_page.dart';
import 'package:database_project/pages/gathering/map_set_page.dart';
import 'package:database_project/pages/gathering/my_location_page.dart';
import 'package:database_project/pages/gathering/set_host_page.dart';
import 'package:database_project/pages/main/home_page.dart';
import 'package:database_project/pages/main_tab_page.dart';
import 'package:database_project/pages/splash_page.dart';
import 'package:get/route_manager.dart';

routes() => [
      GetPage(name: CatchingTaxi.url, page: () => CatchingTaxi()),
      GetPage(
          name: CatchingCompletePage.url, page: () => CatchingCompletePage()),

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

      //GATHERING
      GetPage(
          name: GatheringCreateSuccessPage.url,
          page: () => GatheringCreateSuccessPage()),
      GetPage(name: MapPage.url, page: () => MapPage()),
      GetPage(name: MapSetPage.url, page: () => MapSetPage()),
      GetPage(name: SetHostPage.url, page: () => SetHostPage()),
      GetPage(name: GatheringDetailPage.url, page: () => GatheringDetailPage()),
      GetPage(name: GatheringJoinSuccessPage.url, page: () => GatheringJoinSuccessPage()),
    ];
