import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return BaseScaffold(
        title: "My Profile",
        isArrowBack:true,
        body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "Sally",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "RobertSon",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "My Street Address (including Apt/Unit)",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "City",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "State",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "Zip",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "+1 (949) 555-1212",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "sallyrobertson@gmail.com",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Text(
                  "Add/Update Credit Card",
                  style: medium.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                  fontSize: 21
                  ),
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            cursorColor: AppColors.kPrimary,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Card ending in XX7772",
                                filled: true,
                                fillColor: Color(0xffDDDDDD)),
                          ),
                        )),
                    SvgPicture.asset(
                      "assets/images/visa_card.svg",
                      height: 50,
                    )
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "Credit Card",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "Exp Date",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "CVV",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "Billing Zip",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                AppButton(btnText: "Save Profile",btnWidth: AppSizes.screenWidth*0.75,fun: (){
                  Get.toNamed(RouteHelper.bilinghistory);
                })
              ],
            ),
          ),
        ));
  }
}
