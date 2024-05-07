import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/view/admin/application.dart';
import 'package:beauty_booking_app/view/admin/customer_appointmentScreen.dart';
import 'package:beauty_booking_app/view/admin/edit_customer_profile.dart';
import 'package:beauty_booking_app/view/admin/edit_stylist_profile.dart';
import 'package:beauty_booking_app/view/admin/manageCutomer.dart';
import 'package:beauty_booking_app/view/admin/mange_stylist.dart';
import 'package:beauty_booking_app/view/admin/over_all_appointments.dart';
import 'package:beauty_booking_app/view/admin/stylist_availabilty.dart';
import 'package:beauty_booking_app/view/login_screen.dart';
import 'package:beauty_booking_app/view/portal/portal_Login_screen.dart';
import 'package:beauty_booking_app/view/portal/portal_appointments.dart';
import 'package:beauty_booking_app/view/portal/portal_calendar.dart';
import 'package:beauty_booking_app/view/portal/portal_help.dart';
import 'package:beauty_booking_app/view/portal/portal_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget portalSideBar(BuildContext context){
  return
     Responsive(desktop:  Container(
      width: 100,
      height: MediaQuery.of(context).size.height,
      color: AppColors.kPrimary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  // Get.toNamed(RouteHelper.stypelProfile);
                  // Get.to(()=>S)
                  // Get.back();
                  Get.to(()=>PortalAppointmentsScreen());
                },
                child: true
                    ? const Icon(
                  Icons.access_time_filled_sharp,
                  color: Colors.white,
                  size: 40,
                )
                    : SvgPicture.asset(
                  "assets/images/calendar.svg",
                  height: 40,
                  color: AppColors.kWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  // Get.toNamed(RouteHelper.stypelProfile);
                  Get.to(()=>ProtalAvailability());
                  print("===========1");
                  // Get.back();
                },
                child: SvgPicture.asset(
                  "assets/images/event.svg",
                  height: 40,
                ),
              ),
            ),

            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  print("===========3");
                  Get.to (()=>const ProtalProfile());
                  // Get.toNamed(RouteHelper.stypelProfile);
                  // Get.back();
                },
                child: SvgPicture.asset(
                  "assets/images/profile.svg",
                  height: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  print("===========3");
                  Get.to (()=>
                      PortalHelpScreen());
                  // Get.toNamed(RouteHelper.stypelProfile);
                  // Get.back();
                },
                child: SvgPicture.asset(
                  "assets/images/help.svg",
                  height: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                print("===========4");
                // Get.to(()=>const LogIn());
                Get.to(()=>PortalLogin());
              },
              child: SvgPicture.asset(
                "assets/images/logout.svg",
                height: 40,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    ), tablet:
    Container(
      // width:160,
      // height: MediaQuery.of(context).size.height,
      color: AppColors.kPrimary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  // Get.toNamed(RouteHelper.stypelProfile);
                  // Get.to(()=>S)

                  Get.to(()=>OverAllAppointments());
                },
                child: true
                    ? const Icon(
                  Icons.access_time_filled_sharp,
                  color: Colors.white,
                  size: 32,
                )
                    : SvgPicture.asset(
                  "assets/images/calendar.svg",
                  height: 40,
                  color: AppColors.kWhite,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  // Get.toNamed(RouteHelper.stypelProfile);
                  Get.to(()=>StylistAvailability());
                  print("===========1");
                  // Get.back();
                },
                child: SvgPicture.asset(
                  "assets/images/event.svg",
                  height: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  Get.to(()=>MangeStylist());
                  print("===========2");

                  // Get.toNamed(RouteHelper.stypelProfile);
                  // Get.back();
                },
                child: SvgPicture.asset(
                  "assets/images/profile.svg",
                  height: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  print("===========3");
                  Get.to (()=>const ManageCustomer());
                  // Get.toNamed(RouteHelper.stypelProfile);
                  // Get.back();
                },
                child: SvgPicture.asset(
                  "assets/images/profile.svg",
                  height: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                print("===========4");
                // Get.to(()=>const LogIn());
                Get.to(()=>EditStylistProfile());
              },
              child: SvgPicture.asset(
                "assets/images/logout.svg",
                height: 30,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
                onTap: (){   Get.to(()=>Application());},
                child: Icon(Icons.arrow_forward_rounded)),
          ],
        ),
      ),
    ),
      mobile:
      Container(
        width:60,
        height: MediaQuery.of(context).size.height,
        color: AppColors.kPrimary,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    // Get.toNamed(RouteHelper.stypelProfile);
                    // Get.to(()=>S)

                    Get.to(()=>OverAllAppointments());
                  },
                  child: true
                      ? const Icon(
                    Icons.access_time_filled_sharp,
                    color: Colors.white,
                    size: 32,
                  )
                      : SvgPicture.asset(
                    "assets/images/calendar.svg",
                    height: 40,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    // Get.toNamed(RouteHelper.stypelProfile);
                    Get.to(()=>StylistAvailability());
                    print("===========1");
                    // Get.back();
                  },
                  child: SvgPicture.asset(
                    "assets/images/event.svg",
                    height: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    Get.to(()=>MangeStylist());
                    print("===========2");

                    // Get.toNamed(RouteHelper.stypelProfile);
                    // Get.back();
                  },
                  child: SvgPicture.asset(
                    "assets/images/profile.svg",
                    height: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    print("===========3");
                    Get.to (()=>const ManageCustomer());
                    // Get.toNamed(RouteHelper.stypelProfile);
                    // Get.back();
                  },
                  child: SvgPicture.asset(
                    "assets/images/profile.svg",
                    height: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  print("===========4");
                  // Get.to(()=>const LogIn());
                  Get.to(()=>EditStylistProfile());
                },
                child: SvgPicture.asset(
                  "assets/images/logout.svg",
                  height: 30,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // InkWell(
              //     onTap: (){   Get.to(()=>EditStylistProfile());},
              //     child: Icon(Icons.arrow_forward_rounded)),
            ],
          ),
        ),
      ),);
}