import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Confirmation",
      isArrowBack: false,
      body: Padding(
        padding:  EdgeInsets.all(AppSizes.appVerticalSm),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            "At Saloon Rates",
            style: medium.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
            Row(children: [const Flexible(child: Padding(
              padding: EdgeInsets.only(right: 4.0),
              child: Text("3410 Camelback Rd Suite 1BScottsdale, AZ 85022"),
            )),AppButton(btnText: 'Directions',fun: (){
              Get.toNamed(RouteHelper.joinBeauty);
            },)],),
            Expanded
              (
              child: Card(child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                SvgPicture.asset("assets/images/tick.svg",height: AppSizes.appVerticalXXXL,),
                Center(
                  child: Text("You're all set.\nSee you at 1 PM.",
                    textAlign: TextAlign.center,
                    style: medium.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                  fontSize: 20
                  ),),
                ),
                AppButton(btnText: "View My Appointments", bgColor: AppColors.kBGGreyColor,txtColor: Colors.black,btnWidth: AppSizes.screenWidth*0.75,fun: (){}),
                AppButton(btnText: "View My Appointments", bgColor: AppColors.kRedColor,btnWidth: AppSizes.screenWidth*0.75,fun: (){}),
              Text("\$5 Cancellation Fee Applies")

              ],),),
            )
        ],),
      ),
    );
  }
}
