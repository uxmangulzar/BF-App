import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/view/admin/customer_appointmentScreen.dart';
import 'package:beauty_booking_app/view/admin/over_all_appointments.dart';
import 'package:beauty_booking_app/view/portal/portalScaffold.dart';
import 'package:beauty_booking_app/view/portal/stylistPortal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class ApplicationSubmitted extends StatefulWidget {
  const ApplicationSubmitted({Key? key}) : super(key: key);

  @override
  State<ApplicationSubmitted> createState() => _ApplicationSubmittedState();
}

class _ApplicationSubmittedState extends State<ApplicationSubmitted> {
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return PortalScaffold(body: Responsive(desktop: login(), tablet: login(), mobile:login(),), action:
    Responsive(
        desktop:
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Stylist Portal",
                    style: titleHeading.copyWith(fontSize: 36),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Text(
                  //    "Stylist Portal",
                  //    style: titleHeading,
                  //  ),
                  //  SizedBox(
                  //    height: AppSizes.appVerticalSm,
                  //  ),
                  Row(
                    children: [
                      HeaderButton(
                        btnText: "Apply",
                        fun: () {Get.to(()=>StylistPortal());},
                      ),
                      SizedBox(
                        width: AppSizes.appVerticalSm,
                      ),
                      HeaderButton(
                        btnText: "LogIn",
                        fun: () {},
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        tablet: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Stylist Portal",
              style: titleHeading,
            ),
            SizedBox(
              height: AppSizes.appVerticalSm,
            ),
            Row(
              children: [
                PortalButton(
                  btnText: "Apply",
                  fun: () {},
                ),
                SizedBox(
                  width: AppSizes.appVerticalSm,
                ),
                PortalButton(
                  btnText: "LogIn",
                  fun: () {},
                ),
              ],
            )
          ],
        ),
        mobile: SizedBox()),);
  }

  Widget login(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: AppSizes.appVerticalSm,),
                   const Text("Application Received ",style: webTitleHeading,),
                    SizedBox(height: AppSizes.appVerticalSm,),
                   SvgPicture.asset("assets/images/tick.svg",height: AppSizes.appHorizontalXXL,),
                    SizedBox(height: AppSizes.appVerticalSm,),
                   Text("A Team Member will review your application, verify, references and credentials.Within 24-48 hrs you will received an update.",textAlign: TextAlign.center,style: titleHeading.copyWith(color: Colors.black),)
                  ],),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
