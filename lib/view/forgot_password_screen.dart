import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ForgotPassowrd extends StatelessWidget {
  const ForgotPassowrd({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: "Forgot Password",
       isArrowBack: true ,body:
      Padding(
      padding: const EdgeInsets.only(top: 36.0,left: 16,right: 16,bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        AppTextField(controller: TextEditingController(),hintTxt: "Email",),

        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:AppButton(btnText: 'Reset', fun: () {Get.toNamed(RouteHelper.booking);  },)
        ),


      ],),
    ) );
  }
}
