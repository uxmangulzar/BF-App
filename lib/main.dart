import 'dart:io';

import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/localization/languages.dart';
import 'package:beauty_booking_app/testingApp/calendarTest.dart';
import 'package:beauty_booking_app/testingApp/google_map_test.dart';
import 'package:beauty_booking_app/testingApp/image_picker_web_test.dart';
import 'package:beauty_booking_app/testingApp/paginatedText.dart';
import 'package:beauty_booking_app/testingApp/test_google_map2.dart';
import 'package:beauty_booking_app/testingApp/testweblogin.dart';
import 'package:beauty_booking_app/view/admin/application.dart';
import 'package:beauty_booking_app/view/admin/customer_appointmentScreen.dart';
import 'package:beauty_booking_app/view/admin/edit_customer_profile.dart';
import 'package:beauty_booking_app/view/admin/edit_stylist_profile.dart';
import 'package:beauty_booking_app/view/admin/manageCutomer.dart';
import 'package:beauty_booking_app/view/admin/mange_stylist.dart';
import 'package:beauty_booking_app/view/admin/over_all_appointments.dart';
import 'package:beauty_booking_app/view/admin/stylist_availabilty.dart';
import 'package:beauty_booking_app/view/chooseDateAndTimeScreen.dart';
import 'package:beauty_booking_app/view/login_screen.dart';
import 'package:beauty_booking_app/view/nearMeListScreen.dart';
import 'package:beauty_booking_app/view/nearme_screen.dart';
import 'package:beauty_booking_app/view/portal/about_screen.dart';
import 'package:beauty_booking_app/view/portal/application_submitted_screen.dart';
import 'package:beauty_booking_app/view/portal/portal_Login_screen.dart';
import 'package:beauty_booking_app/view/portal/portal_appointments.dart';
import 'package:beauty_booking_app/view/portal/portal_calendar.dart';
import 'package:beauty_booking_app/view/portal/portal_help.dart';
import 'package:beauty_booking_app/view/portal/portal_profile.dart';
import 'package:beauty_booking_app/view/portal/stylistPortal.dart';
import 'package:beauty_booking_app/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// this is main funtion of app
void main() {

  AndroidGoogleMapsFlutter.useAndroidViewSurface = true;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Beauty Saloon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      translations: Languages(),
      locale: Locale("en","US"),
      fallbackLocale: Locale("en","US"),

      // initialRoute: GetPlatform.isAndroid || GetPlatform.isIOS? RouteHelper.splash:  RouteHelper.login ,
      // getPages:GetPlatform.isAndroid || GetPlatform.isIOS?  RouteHelper.routes:RouteHelper.webRoutes ,
      home:
      ///portal
      ApplicationSubmitted()
        ///

    );
  }
}

