import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/images.dart';
import 'package:beauty_booking_app/view/homeScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    // Future.delayed( const Duration(seconds: 2),(){
    //   Get.to(()=>HomeScreen());
    // });

    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(gradient: LinearGradient(colors: [AppColors.kPrimary,AppColors.kPrimary])),
            height: AppSizes.screenHeight*0.25,
            width: double.infinity,
            child:const Center(
              child: Text(
                "BF",
                style: largeBold,
              ),
            ),
          ),
          Padding(
           padding:  EdgeInsets.all(AppSizes.appVerticalSm),
           child:  Text("Find Top-Rated \nStylists near you!",style: medium.copyWith(color: Colors.black),),
         ),
          // Container(height: MediaQuery.of(context).size.height,)
          Expanded(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 140),
                  height: MediaQuery.of(context).size.height,
                  color: Colors.red,width: double.infinity,
                  child: Image.asset("assets/dashboard/image.jpeg",fit: BoxFit.contain),

                ),
                // Image.asset("assets/dashboard/image.jpeg",fit: BoxFit.cover,height: 200,),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
