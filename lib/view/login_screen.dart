import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/view/admin/over_all_appointments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return BaseScaffold(title: "LogIn", isArrowBack: true,body:

    SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(top: 36.0,left:GetPlatform.isWeb?80: 16,right: 16,bottom: 8),
        child: Column(
          crossAxisAlignment:GetPlatform.isWeb?CrossAxisAlignment.start:CrossAxisAlignment.center ,
          children: [

          if(GetPlatform.isWeb) const Text("Admin Login",style: webBoldTitle,),
            if(GetPlatform.isWeb)  SizedBox(height:AppSizes.appVerticalMd ,),
          SizedBox(
              width:GetPlatform.isWeb?340:double.infinity ,
              child: AppTextField(controller: TextEditingController(),hintTxt: "Email",)),
            GetPlatform.isWeb? SizedBox(height:AppSizes.appVerticalSm ,):SizedBox(height:AppSizes.appVerticalSm ,),
          SizedBox(
              width:GetPlatform.isWeb?340:double.infinity ,
              child: AppTextField(controller: TextEditingController(),hintTxt: "Password",)),
            if(GetPlatform.isWeb)  SizedBox(height:AppSizes.appVerticalMd ,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                if(!GetPlatform.isWeb)   Expanded(
                    child: Text("forgot password",style: mediumText.copyWith(letterSpacing: 0,fontWeight: FontWeight.bold))),

                SizedBox(
                  width: 100,
                  child: AppButton(btnText: 'LogIn' ,fun: () {
                    // Get.toNamed(RouteHelper.forgot);
                    Get.to(()=>OverAllAppointments());
                   },),
                )
              ],
            ),
          ),
          SizedBox(height: AppSizes.screenHeight*0.05,),
            if(GetPlatform.isWeb)const  Text("Forgot Password",style: webBoldTitle),

            if(!GetPlatform.isWeb)  Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text("New to Beauty Finder?\n\nIt's Free to Join.",textAlign: TextAlign.center,style: medium.copyWith(color: Colors.black,fontWeight: FontWeight.normal), ),
          ),
            GetPlatform.isWeb? SizedBox(height:AppSizes.appVerticalSm ,):SizedBox(height:AppSizes.appVerticalSm ,),

            if(GetPlatform.isWeb)  SizedBox(
                width:GetPlatform.isWeb?340:double.infinity ,
                child: AppTextField(controller: TextEditingController(),hintTxt: "Email",)),
            if(GetPlatform.isWeb)  SizedBox(height:AppSizes.appVerticalMd ,),

      GetPlatform.isWeb? SizedBox(
        width: 100,
        child: AppButton(btnText: 'Reset' ,fun: () {
          // Get.toNamed(RouteHelper.forgot);
          Get.to(()=>OverAllAppointments());
        },),
      ):   AppButton(btnText: "SignUp", fun: () {  },)


        ],),
      ),
    ) ,);
  }
}
