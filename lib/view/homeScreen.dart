import 'dart:io';

import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_constants.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        return false;
      },
      child: BaseScaffold(
          title: "I need a stylist for...",
          body: InkWell(
            onTap: (){Get.toNamed(RouteHelper.nearme);},
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          child: Image.asset("assets/dashboard/straightening.jpg",fit: BoxFit.cover,)),
                      Container(

                        decoration:  const BoxDecoration(
                            color: AppColors.kPrimary,
                            borderRadius:BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomRight:
                                    Radius.circular(16)),
                        ),
                        child:    Padding(
                          padding:  EdgeInsets.all(AppSizes.appVerticalSm),
                          child:const Text("Straightening",style: medium),
                        ) ,
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          child: Image.asset("assets/dashboard/curling.jpg",fit: BoxFit.cover,)),
                      Container(
                        decoration:  const BoxDecoration(
                            color: AppColors.kPrimary,
                            borderRadius:BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomRight:
                                    Radius.circular(16)),
                        ),
                        child:    Padding(
                          padding:  EdgeInsets.all(AppSizes.appVerticalSm),
                          child:const Text("Curling",style: medium),
                        ) ,
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      SizedBox(

                          width: double.infinity,
                          child: Image.asset("assets/dashboard/updo.jpg",fit: BoxFit.cover,)),
                      Container(
                        decoration:  const BoxDecoration(
                          color: AppColors.kPrimary,
                          borderRadius:BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight:
                              Radius.circular(16)),
                        ),
                        child:    Padding(
                          padding:  EdgeInsets.all(AppSizes.appVerticalSm),
                          child:const Text("Up-Do",style: medium),
                        ) ,
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      SizedBox(

                          width: double.infinity,
                          child: Image.asset("assets/dashboard/braiding.jpg",fit: BoxFit.cover,)),
                      Container(

                        decoration:  const BoxDecoration(
                          color: AppColors.kPrimary,
                          borderRadius:BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight:
                              Radius.circular(16)),
                        ),
                        child:    Padding(
                          padding:  EdgeInsets.all(AppSizes.appVerticalSm),
                          child:const Text("Braiding",style: medium),
                        ) ,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
