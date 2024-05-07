import 'package:beauty_booking_app/view/admin/mange_stylist.dart';
import 'package:beauty_booking_app/view/admin/over_all_appointments.dart';
import 'package:beauty_booking_app/view/billing_history_screen.dart';
import 'package:beauty_booking_app/view/book_now_screen.dart';
import 'package:beauty_booking_app/view/chooseDateAndTimeScreen.dart';
import 'package:beauty_booking_app/view/confirmation_screen.dart';
import 'package:beauty_booking_app/view/forgot_password_screen.dart';
import 'package:beauty_booking_app/view/help_screen.dart';
import 'package:beauty_booking_app/view/homeScreen.dart';
import 'package:beauty_booking_app/view/home_service_screen.dart';
import 'package:beauty_booking_app/view/joinBeautiyScreen.dart';
import 'package:beauty_booking_app/view/login_screen.dart';
import 'package:beauty_booking_app/view/myAppointments.dart';
import 'package:beauty_booking_app/view/myProfile_screen.dart';
import 'package:beauty_booking_app/view/nearMeListScreen.dart';
import 'package:beauty_booking_app/view/nearme_screen.dart';
import 'package:beauty_booking_app/view/review_screen.dart';
import 'package:beauty_booking_app/view/saloon_service_screen.dart';
import 'package:beauty_booking_app/view/splash_screen.dart';
import 'package:beauty_booking_app/view/styleprofile_screen.dart';
import 'package:get/get.dart';

class RouteHelper{
  
  static String initial ='/';
  static String splash='/home';
  static String stypelProfile='/stypelProfile';
  static String login='/login';
  static String forgot='/forgot';
  static String booking='/booking';
  static String homerservices='/homerservices';
  static String saloonservices='/saloonservices';
  static String confirmation='/confirmation';
  static String joinBeauty='/joinBeauty';
  static String myappointments='/myappointments';
  static String profile='/profile';
  static String bilinghistory='/bilinghistory';
  static String review='/review';
  static String help='/help';
  static String nearme='/nearme';
  static String nearMeList='/nearMeList';
  static String chooseDateTime='/chooseDateTime';


  static String adminManagingStyling='/adminManagingStyling';
  static String adminAllAppointments='/adminAllAppointments';

  static String getInitialRoute() => initial;
  static String getSplashRoute() => splash;
  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: initial, page: () => const HomeScreen()),
    GetPage(name: nearme, page: () => const NearMeScreen()),
    GetPage(name: nearMeList, page: () => const  NearMeSaloon()),
    GetPage(name: stypelProfile, page: () =>const  StyleProfile()),
    GetPage(name: login, page: () =>const LogIn()),
    GetPage(name: forgot, page: () => const ForgotPassowrd()),
    GetPage(name: booking, page: () => const BookNewScreen()),
    GetPage(name: homerservices, page: () =>const  HomeServiceScreen()),
    GetPage(name: saloonservices, page: () =>const SaloonServiceScreen()),
    GetPage(name: confirmation, page: () => const ConfirmationScreen()),
    GetPage(name: joinBeauty, page: () => const JoinBeautyScreen()),
    GetPage(name: myappointments, page: () => const MyAppointmentsScreen()),
    GetPage(name: profile, page: () =>const MyProfileScreen()),
    GetPage(name: bilinghistory, page: () => const BillingHistoryScreen()),
    GetPage(name: review, page: () => const ReviewScreen()),
    GetPage(name: help, page: () => const HelpScreen()),
    GetPage(name: chooseDateTime, page: () => const ChooseDateAndTime()),

  ];
  static List<GetPage> webRoutes = [

    GetPage(name: login, page: () =>const LogIn()),
    GetPage(name: adminManagingStyling, page: () =>const MangeStylist()),
    GetPage(name: adminAllAppointments, page: () =>const OverAllAppointments()),


  ];
}