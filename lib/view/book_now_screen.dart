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
enum Select { soonest, otherTime }
enum Where { comeToMe, toYou }
enum Tool { ownTools, products }
class BookNewScreen extends StatefulWidget {
  const BookNewScreen({Key? key}) : super(key: key);

  @override
  State<BookNewScreen> createState() => _BookNewScreenState();
}

class _BookNewScreenState extends State<BookNewScreen> {
  Select select=Select.soonest;
  Where where =Where.comeToMe;
  Tool tool =Tool.ownTools;
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return BaseScaffold(
        title: "Book Now",
        isArrowBack: true,
        body: Container(
          // color: Colors.grey.shade50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
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
                          AppButton(
                            btnText: "Profile",
                            fun: () {},
                          ),
                          SizedBox(
                            height: AppSizes.screenHeight * 0.005,
                          ),
                          AppButton(
                            btnText: "Directions",
                            fun: () {},
                          )
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: AppSizes.appVerticalSm,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      size: 18,
                    ),
                    Text("Today 1 PM"),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Padding(


                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded
                        (child: Text("When?",style: mediumText.copyWith(letterSpacing: 0,fontWeight: FontWeight.bold))),
                      Container(

                        decoration:select== Select.soonest?
                        BoxDecoration(

                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.circular(20),
                          border:
                          Border.all(color: Colors.black),
                          ):null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Radio<Select>(
                                value: Select.soonest,
                                groupValue: select,
                                onChanged: (Select? value) {
                                  setState(() {
                                    select = value!;
                                  });
                                },
                              ),
                              Text("Soonest")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration:select== Select.otherTime?
                        BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border:
                          Border.all(color: Colors.black),
                          // boxShadow:[BoxShadow(color: Colors.black12,spreadRadius: 5,offset: Offset(1, 0.1),blurRadius: 2)]
                        ):null,

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Radio<Select>(
                                value: Select.otherTime,
                                groupValue: select,
                                onChanged: (Select? value) {
                                  setState(() {
                                    select = value!;
                                  });
                                },
                              ),
                              Text("Other Time")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded(child: Text("Where?",style: mediumText.copyWith(letterSpacing: 0,fontWeight: FontWeight.bold))),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration:where== Where.comeToMe?
                        BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border:
                          Border.all(color: Colors.black),
                            // boxShadow:[BoxShadow(color: Colors.black12,spreadRadius: 5,offset: Offset(1, 0.1),blurRadius: 2)]
                        ):null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Radio<Where>(
                                    value: Where.comeToMe,
                                    groupValue: where,
                                    onChanged: (Where? value) {
                                      setState(() {
                                        where = value!;
                                      });
                                    },
                                  ),
                                 Icon(Icons.home,size: 40,)
                                ],
                              ),
                              Text("Come to me")
                            ],
                          ),
                        ),
                      ),
                      Container(

                        decoration:where== Where.toYou?
                        BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border:
                          Border.all(color: Colors.black),
                          // boxShadow:[BoxShadow(color: Colors.black12,spreadRadius: 5,offset: Offset(1, 0.1),blurRadius: 2)]
                        ):null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Radio<Where>(
                                    value: Where.toYou,
                                    groupValue: where,
                                    onChanged: (Where? value) {
                                      setState(() {
                                        where = value!;
                                      });
                                    },
                                  ),
                                  SvgPicture.asset("assets/images/chair.svg",height: 40,),

                                ],
                              ),
                              Text("I'll come to you")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                const Text("I'll bring .. (check what applies) OPTIONAL "),
                SizedBox(height: AppSizes.appVerticalSm,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration:tool== Tool.ownTools?
                        BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border:
                          Border.all(color: Colors.black),
                          // boxShadow:[BoxShadow(color: Colors.black12,spreadRadius: 5,offset: Offset(1, 0.1),blurRadius: 2)]
                        ):null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Radio<Tool>(
                                    value: Tool.ownTools,
                                    groupValue: tool,
                                    onChanged: (Tool? value) {
                                      setState(() {
                                        tool = value!;
                                      });
                                    },
                                  ),
                                  SvgPicture.asset("assets/images/seizor.svg",height: 40,)
                                ],
                              ),
                              Text("My own tools",)
                            ],
                          ),
                        ),
                      ),
                      Container(

                        decoration:tool== Tool.products?
                        BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border:
                          Border.all(color: Colors.black),
                          // boxShadow:[BoxShadow(color: Colors.black12,spreadRadius: 5,offset: Offset(1, 0.1),blurRadius: 2)]
                        ):null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Radio<Tool>(
                                    value: Tool.products,
                                    groupValue: tool,
                                    onChanged: (Tool? value) {
                                      setState(() {
                                        tool = value!;
                                      });
                                    },
                                  ),
                                 SvgPicture.asset("assets/images/waves.svg",height: 40,)
                                ],
                              ),
                             const Text("My products")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
               const Spacer(),
                AppButton(btnText: "Book Now!",btnWidth: AppSizes.screenWidth/2, fun: (){
                  Get.toNamed(RouteHelper.homerservices);
                }),
                SizedBox(height: AppSizes.appVerticalLg,)
              ],
            ),
          ),
        ));
  }
}
