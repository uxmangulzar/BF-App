import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/commonWidget/webSideBar.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/testingApp/paginatedText.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/web_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../util/responsive.dart';

class OverAllAppointments extends StatefulWidget {
  const OverAllAppointments({Key? key}) : super(key: key);

  @override
  State<OverAllAppointments> createState() => _OverAllAppointmentsState();
}

class _OverAllAppointmentsState extends State<OverAllAppointments> {
  @override
  Widget build(BuildContext context) {
    return WebBaseScaffold(
        body:
       true?
       Responsive(
         desktop:
       Row(
         children: [
           WebSideBar(context),
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
                           const  Text(
                               "All Appointments",
                               style: webTitle,
                             ),
                             const SizedBox(
                               width: 8,
                             ),
                             const Icon(
                               Icons.access_time_filled_rounded,
                               size: 32,
                             ),
                             if(MediaQuery.of(context).size.width>780)  const Spacer(),
                             if(MediaQuery.of(context).size.width>780)
                               Text("Filter By Stylist", style: smallHeading.copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
                             const SizedBox(width:6),
                             if(MediaQuery.of(context).size.width>780)
                               SizedBox(
                                   width: 250,
                                   child: AppTextField(
                                     controller: TextEditingController(),
                                     hintTxt: "Style By Genie",
                                   )),
                             const  SizedBox(width:28)
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
                         child: PaginatedDataTableExample(

                         ),
                         // )
                       ),
                       const Padding(
                         padding: EdgeInsets.all(12.0),
                         child: Row(
                           children: [
                             Text(
                               "Completed",
                               style: webTitle,
                             ),
                             SizedBox(
                               width: 8,
                             ),
                             Icon(
                               Icons.calendar_month_outlined,
                               size: 32,
                             ),
                           ],
                         ),
                       ),
                       SizedBox(
                           height: 500,
                           child: PaginatedDataTableExample2(
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
           WebSideBar(context),
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
                               "All Appointments",
                               style: webTitle,
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
                       if(true)
                         Padding(
                           padding: const EdgeInsets.all(12.0),
                           child: Row(
                             children: [
                               Text("Filter By Stylist33", style: smallHeading.copyWith(fontWeight: FontWeight.bold)),
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
                         child: PaginatedDataTableExample(

                         ),
                         // )
                       ),
                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Row(
                           children: [
                             Text(
                               "Completed",
                               style:webTitle
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
                           child: PaginatedDataTableExample2(
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
       true? SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(children: [
             Row(
               children: [
                 Text(
                   "All Appointments",
                   style: webTitle,
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
             Row(
               children: [
                 Text("Filter By Stylist", style: smallHeading.copyWith(fontWeight: FontWeight.bold)),
                 SizedBox(
                   width: AppSizes.appVerticalSm,
                 ),
                 SizedBox(
                     width: MediaQuery.of(context).size.width/2,
                     child: AppTextField(
                       controller: TextEditingController(),
                       hintTxt: "Style By Genie",
                     )),
               ],
             ),
             SizedBox(
               height: AppSizes.appVerticalSm,
             ),
             SizedBox(
               child: PaginatedDataTableExample(
               ),
               // )
             ),
             SizedBox(
               height: AppSizes.appVerticalSm,
             ),
             Row(
               children: [
                 Text(
                   "Completed",
                   style: webTitle
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
             PaginatedDataTableExample2()

           ],),
         ),
       ):
       Row(
         children: [
           // WebSideBar(context),
           Expanded(
               child: SingleChildScrollView(
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Text(
                           "All Appointments",
                           style: medium.copyWith(color: Colors.black),
                         ),
                         const SizedBox(
                           width: 8,
                         ),
                         const Icon(
                           Icons.access_time_filled_rounded,
                           size: 32,
                         ),
                         if(MediaQuery.of(context).size.width>780)  const Spacer(),
                         if(MediaQuery.of(context).size.width>780)
                           Text("Filter By Stylist", style: smallHeading.copyWith(fontWeight: FontWeight.bold)),
                         const SizedBox(width:6),
                         if(MediaQuery.of(context).size.width>780)
                           SizedBox(
                               width: 250,
                               child: AppTextField(
                                 controller: TextEditingController(),
                                 hintTxt: "Style By Genieaaa",
                               )),
                         const  SizedBox(width:28)
                       ],
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
                       child: PaginatedDataTableExample(

                       ),
                       // )
                     ),
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child:
                       Row(
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
                         child: PaginatedDataTableExample2(
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
               ))
         ],
       ),):

        Row(
      children: [
        // WebSideBar(context),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      "All Appointments",
                      style: medium.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.access_time_filled_rounded,
                      size: 32,
                    ),
                      if(MediaQuery.of(context).size.width>780)  const Spacer(),
                      if(MediaQuery.of(context).size.width>780)
                      Text("Filter By Stylist", style: smallHeading.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(width:6),
                      if(MediaQuery.of(context).size.width>780)
                      SizedBox(
                        width: 250,
                        child: AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Style By Genieaaa",
                        )),
                      const  SizedBox(width:28)
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
                  child: PaginatedDataTableExample(
                // widget: Padding(
                  // padding: const EdgeInsets.all(8.0),
                  // child: Row(
                    // children: [
                      // ElevatedButton( onPressed: (){},child:const Text("Cancel",),),
                      // Container(
                      //   padding: EdgeInsets.all(6),
                      //   decoration: BoxDecoration(
                      //       color: AppColors.kRedColor,
                      //       borderRadius: BorderRadius.circular(8)),
                      //   child: Center(
                      //     child: Text(
                      //       "Cancel",
                      //       style: TextStyle(color: Colors.white),
                      //     ),
                      //   ),
                      // ),

                      // SizedBox(
                      //   width: 4,
                      // ),
                      // Container(
                      //   padding: EdgeInsets.all(6),
                      //   decoration: BoxDecoration(
                  //           color: Colors.green,
                  //           borderRadius: BorderRadius.circular(8)),
                  //       child: Center(
                  //         child: Text(
                  //           "Issue Payout",
                  //           style: TextStyle(color: Colors.white),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
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
                  child: PaginatedDataTableExample2(
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
        ))
      ],
    ));
  }
}
