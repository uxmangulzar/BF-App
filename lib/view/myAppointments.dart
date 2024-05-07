import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyAppointmentsScreen extends StatelessWidget {
  const MyAppointmentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: "My Appointments", isArrowBack:true,body: SingleChildScrollView(

      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(children:List.generate(3, (index) =>   Padding(
          padding: const EdgeInsets.only(right: 12.0),
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
                                  size: 24,
                                )),
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 18,
                            ),
                            Text("Today 1 PM"),
                          ],
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
                  SizedBox(
                    height: AppSizes.screenHeight * 0.005,
                  ),
                  AppButton(
                    btnText: "Directions",
                    bgColor: AppColors.kRedColor,
                    txtColor: AppColors.kWhite,
                    fun: () {
                      Get.toNamed(RouteHelper.profile);
                    },
                  )
                ],
              )
            ],
          ),
        )),),
      ),
    ));
  }
}
