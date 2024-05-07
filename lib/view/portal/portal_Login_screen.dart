import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/view/portal/portalScaffold.dart';
import 'package:beauty_booking_app/view/portal/portal_appointments.dart';
import 'package:beauty_booking_app/view/portal/stylistPortal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PortalLogin extends StatelessWidget {
  const PortalLogin({Key? key}) : super(key: key);
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
        tablet:
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
        mobile: SizedBox()),);
  }
  Widget login(){
    return Padding(
      padding: const EdgeInsets.only( top: 16.0,left: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        Text("Stylist Login",style: webTitleHeading.copyWith(fontSize: 28,fontWeight: FontWeight.bold),),
        SizedBox(height: AppSizes.appVerticalSm,),
        SizedBox(width: 340,
        child: AppTextField(hintTxt: "Email",controller: TextEditingController(),),
        ),
        SizedBox(height: AppSizes.appVerticalSm,),
        SizedBox(width: 340,
          child: AppTextField(hintTxt: "Password",controller: TextEditingController(),),
        ),
        SizedBox(height: AppSizes.appVerticalSm,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
               Text("Forgot Password?",style: mediumText.copyWith(fontSize: 16, letterSpacing: 0,fontWeight: FontWeight.bold)),
              const SizedBox(width: 100,),
               PortalButton(
                btnText: "LogIn",
                borderRadius: 8,
                 isBold:true,
                fun: () {
                  Get.to(()=>PortalAppointmentsScreen());
                },
              ),
            ],
          ),
        ),
        SizedBox(height: AppSizes.appVerticalXL,),
        Text("Forgot Password",style: webTitleHeading.copyWith(fontSize: 28,fontWeight: FontWeight.bold),),
        SizedBox(height: AppSizes.appVerticalSm,),
        SizedBox(width: 340,
          child: AppTextField(hintTxt: "Email",controller: TextEditingController(),),
        ),
        SizedBox(height: AppSizes.appVerticalSm,),

        Row(
          children: [
            PortalButton(
              btnText: "Reset",
              borderRadius: 8,
            isBold:true,
              fun: () {},
            ),
            Spacer(),
          ],
        ),
      ],),
    );

  }
}
