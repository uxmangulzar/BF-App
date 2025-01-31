import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_constants.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NearMeSaloon extends StatefulWidget {
  const NearMeSaloon({Key? key}) : super(key: key);

  @override
  State<NearMeSaloon> createState() => _NearMeSaloonState();
}

class _NearMeSaloonState extends State<NearMeSaloon> {

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return BaseScaffold(
        title: "Curling Style Near Me",
        isArrowBack: true,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView
                (
                child: Column(
                  children:List.generate(6, (index) =>
                      Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/dashboard/braiding.jpg",
                            fit: BoxFit.cover,
                            height: 110,
                            width: 110,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("500 ft"),
                                  const Text("Style By Genie"),
                                  const Text("Blow-dry, Curling"),
                                  SizedBox(
                                    height: AppSizes.appVerticalXs,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: List.generate(
                                          5,
                                              (index) => const Icon(
                                            Icons.star,
                                            size: 20,
                                          )),
                                    ),
                                  ),

                                ],
                              ),
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(child: SizedBox(width: AppSizes.screenWidth*0.3,
                              child:const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text("Today 1 pm",textAlign: TextAlign.center,),
                              ),
                            ),),

                            AppButton(
                              btnText: "Profile",
                              fun: () {    Get.toNamed(RouteHelper.stypelProfile);},
                            ),
                            SizedBox(
                              height: AppSizes.screenHeight * 0.005,
                            ),
                            AppButton(
                              btnText: "Directions",
                              fun: () {    Get.toNamed(RouteHelper.stypelProfile);},
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ),
              ),
            ),

            InkWell(
              onTap: (){Get.back();},
              child: Container(
                padding:const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: AppColors.kPrimary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.map,color: AppColors.kWhite,size: 42,),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text("Map View",style: medium.copyWith(fontSize: 18)),
                    ),
                  ],
                ),),
            )

          ],
        ));
  }
}
