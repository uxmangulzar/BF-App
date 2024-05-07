import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StyleProfile extends StatelessWidget {
  const StyleProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Style Profile',
      isArrowBack: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/dashboard/braiding.jpg",
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                   Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        const Text("Style By Genie"),
                        const Text("3410 Camelback Rd Suite 1B Scottsdale, AZ 85022"),
                        SizedBox(height: AppSizes.appVerticalXs,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [AppButton(btnText: "Directions", fun: () { 
                            Get.toNamed(RouteHelper.login);
                           },), AppButton(btnText: "Book Now", btnWidth: AppSizes.screenWidth*0.1,fun: () {Get.toNamed(RouteHelper.login);  },)],
                        )
                    ],
                  ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  const Text("Services:  Curling, Straigtening",style: smallHeading,),
                  Row(children: List.generate(2, (index) =>  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child:   ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/dashboard/braiding.jpg",
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),),),
                  Text("Reviews"),
                  Column(children:List.generate(4, (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Row(
                            children: List.generate(5, (index) => Icon(Icons.star))

                            ,
                          ),
                    Text("Genie did an amazing job on my hair! I'll definitely be booking with her again.")]),
                  )))
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
