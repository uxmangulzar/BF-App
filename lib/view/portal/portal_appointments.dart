import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/testingApp/paginatedText.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/util/web_scaffold.dart';
import 'package:beauty_booking_app/view/portal/portalScaffold.dart';
import 'package:beauty_booking_app/view/portal/portalSideBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PortalAppointmentsScreen extends StatefulWidget {
  const PortalAppointmentsScreen({Key? key}) : super(key: key);

  @override
  State<PortalAppointmentsScreen> createState() => _PortalAppointmentsScreenState();
}

class _PortalAppointmentsScreenState extends State<PortalAppointmentsScreen> {
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return PortalScaffold(body:

    Responsive(
      desktop:
      Row(
        children: [
          portalSideBar(context),
          Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: AppSizes.appVerticalSm,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Text(
                              "My Appointments",
                              style: medium.copyWith(color: Colors.black),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.access_time_filled_rounded,
                              size: 32,
                            ),

                          ],
                        ),
                      ),
                      if(MediaQuery.of(context).size.width<780)
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Text("Filter By Stylist", style: smallHeading.copyWith(fontWeight: FontWeight.bold)),
                              const SizedBox(width:6),
                              SizedBox(
                                  width: 200,
                                  child: AppTextField(
                                    controller: TextEditingController(),
                                    hintTxt: "Style By Genie",
                                  )),

                            ],
                          ),
                        ),



                      SizedBox(
                        child: PortalPaginatedDataTableExample(

                        ),
                        // )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Text(
                              "Completed",
                              style: medium.copyWith(color: Colors.black),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.calendar_month_outlined,
                              size: 32,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 500,
                          child: PortalPaginatedDataTableExample1(
                            //   widget: Padding(
                            //     padding: const EdgeInsets.all(8.0),
                            //     child: Container(
                            //       padding: const EdgeInsets.all(6),
                            //       decoration: BoxDecoration(
                            //           color: AppColors.kRedColor,
                            //           borderRadius: BorderRadius.circular(8)),
                            //       child: const Center(
                            //         child: Text(
                            //           "Refund",
                            //           style: TextStyle(color: Colors.white),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                          )
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ), tablet:
    Row(
      children: [
        portalSideBar(context),
        Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            "My Appointments",
                            style: medium.copyWith(color: Colors.black),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
                            Icons.access_time_filled_rounded,
                            size: 32,
                          ),
                          const Spacer(),

                          //   Text("Filter By Stylist32", style: smallHeading.copyWith(fontWeight: FontWeight.bold)),
                          // const SizedBox(width:6),
                          // if(MediaQuery.of(context).size.width>780)
                          //   SizedBox(
                          //       width: 220,
                          //       child: AppTextField(
                          //         controller: TextEditingController(),
                          //         hintTxt: "Style By Genieaaa",
                          //       )),
                          const  SizedBox(width:28)
                        ],
                      ),
                    ),




                    SizedBox(
                      child: PortalPaginatedDataTableExample(

                      ),
                      // )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            "Completed",
                            style: medium.copyWith(color: Colors.black),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
                            Icons.calendar_month_outlined,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 500,
                        child: PortalPaginatedDataTableExample1(
                          //   widget: Padding(
                          //     padding: const EdgeInsets.all(8.0),
                          //     child: Container(
                          //       padding: const EdgeInsets.all(6),
                          //       decoration: BoxDecoration(
                          //           color: AppColors.kRedColor,
                          //           borderRadius: BorderRadius.circular(8)),
                          //       child: const Center(
                          //         child: Text(
                          //           "Refund",
                          //           style: TextStyle(color: Colors.white),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                        )
                    ),
                  ],
                ),
              ),
            ))
      ],
    ), mobile:

    SingleChildScrollView(
      child: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "All Appointments",
                style: medium.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(
              width: AppSizes.appVerticalSm,
            ),
            const Icon(
              Icons.access_time_filled_rounded,
              size: 32,
            )
          ],
        ),
        SizedBox(
          height: AppSizes.appVerticalSm,
        ),

        SizedBox(
          child: PortalPaginatedDataTableExample(
          ),
          // )
        ),
        SizedBox(
          height: AppSizes.appVerticalSm,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Completed",
                style: medium.copyWith(color: Colors.black),
              ),
              SizedBox(
                width: AppSizes.appVerticalSm,
              ),
              const Icon(
                Icons.calendar_month_outlined,
                size: 32,
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppSizes.appVerticalSm,
        ),
        PortalPaginatedDataTableExample1()

      ],),
    )
    ), action:
    Responsive(
        desktop: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: AppSizes.appVerticalSm,
            ),
            Text("Style by Genie", style: titleHeading,),
            SizedBox(
              width: AppSizes.appVerticalSm,
            ),
            SizedBox(
              height: AppSizes.appVerticalSm,
            ),
            Text("GlamN' Since 2023", style: smallText.copyWith(color: Colors.white),),
          ],
        ),
        tablet: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: AppSizes.appVerticalSm,
            ),
            Text("Style by Genie", style: titleHeading,),
            SizedBox(
              width: AppSizes.appVerticalSm,
            ),
            SizedBox(
              height: AppSizes.appVerticalSm,
            ),
            Text("GlamN' Since 2023", style: smallText.copyWith(color: Colors.white),),
          ],
        ),
        mobile:  Center(child: Text("Style by Genie", style: titleHeading,)),),);
  }
}
