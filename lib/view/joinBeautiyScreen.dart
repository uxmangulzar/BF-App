import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_constants.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class JoinBeautyScreen extends StatefulWidget {
  const JoinBeautyScreen({Key? key}) : super(key: key);

  @override
  State<JoinBeautyScreen> createState() => _JoinBeautyScreenState();
}

class _JoinBeautyScreenState extends State<JoinBeautyScreen> {
  TextEditingController? nameController;
  TextEditingController? phoneController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? confirmController;
  RxBool isChecked = false.obs;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController!.clear();
    phoneController!.clear();
    emailController!.clear();
    passwordController!.clear();
    confirmController!.clear();
  }
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return BaseScaffold(title: "Choose Date/Time",isArrowBack:true ,body: Column(children: [
      Stack(
        alignment: Alignment.centerLeft,
        children: [
          SizedBox(

              width: double.infinity,
              child: Image.asset("assets/images/joinbImg.png",fit: BoxFit.cover,height: AppSizes.appVerticalXXXL,)),


        ],
      ),
      Expanded(
        child:
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  AppTextField(controller: nameController,hintTxt: "name",),
                  SizedBox(height: AppSizes.appVerticalSm,),
                  AppTextField(controller: emailController,hintTxt: "name",),
                  SizedBox(height: AppSizes.appVerticalSm,),
                  AppTextField(controller: phoneController,hintTxt: "name",),
                  SizedBox(height: AppSizes.appVerticalSm,),
                  AppTextField(controller: passwordController,hintTxt: "name",),
                  SizedBox(height: AppSizes.appVerticalSm,),
                  AppTextField(controller: confirmController,hintTxt: "name",),
                  SizedBox(height: AppSizes.appVerticalSm,),
                  Obx(()=>
                    Row(
                    children: [
                      Checkbox(
                          fillColor: MaterialStateProperty.all(AppColors.kPrimary),
                          value: isChecked.value, onChanged: (val){
                            isChecked.value=!isChecked.value;}),
                      const Expanded(child:
                      Text("I agree to Terms of Service"))
                    ],
                  ),
                ),

                  SizedBox(height: AppSizes.appVerticalSm,),
                  AppButton(btnText: 'Create Account',btnWidth: AppSizes.screenWidth*0.75,fun: (){
                    Get.toNamed(RouteHelper.myappointments);
                  },)
                ],),
              ),
            )
    
      ),
    ],));
  }
}
