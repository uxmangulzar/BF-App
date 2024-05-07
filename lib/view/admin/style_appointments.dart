import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/commonWidget/webSideBar.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/testingApp/paginatedText.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/util/web_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class StyleAppointmentsScreen extends StatefulWidget {
  const StyleAppointmentsScreen({Key? key}) : super(key: key);

  @override
  State<StyleAppointmentsScreen> createState() => _StyleAppointmentsScreenState();
}

class _StyleAppointmentsScreenState extends State<StyleAppointmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return WebBaseScaffold(
        body: Responsive(desktop:
        Row(
          children: [
            WebSideBar(context),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.people_sharp,
                                size: 36,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Customer Appointments: Sally Roberts",
                                style: medium.copyWith(color: Colors.black),
                              ),




                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0,top:12,bottom:12),
                          child: Row(children: [
                            SizedBox(
                                width: 250,
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "Card ending in XX7772",
                                )),
                            SizedBox(
                              width: 6,),
                            SvgPicture.asset(
                              "assets/images/visa_card.svg",
                              height: 50,
                            ),
                            SizedBox(
                              width: 20,),


                            Text("Stripe Customer ID: 3342F21FA"),
                            SizedBox(
                              width: 20,),
                            Text("View Stripe Profile"),
                            SizedBox(
                              width: 20,),
                            const  SizedBox(width:28)],),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 28.0,top:12,bottom:12),
                          child: Row(
                            children: [
                              Text(
                                "Pending",
                                style: medium.copyWith(color: Colors.black),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.access_time,
                                size: 32,
                              ),


                            ],
                          ),
                        ),
                        const SizedBox(width:6),
                        SizedBox(
                          child: PaginatedDataTableExample2(

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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.people_sharp,
                                size: 36,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                  "Customer Appointments: Sally Roberts",
                                  style: medium.copyWith(color: Colors.black,fontSize: MediaQuery.of(context).size.width<760?24:32)),





                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0,top:12,bottom:12),
                          child: Row(children: [
                            SizedBox(
                                width: 250,
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "Card ending in XX7772",
                                )),
                            SizedBox(
                              width: 6,),
                            SvgPicture.asset(
                              "assets/images/visa_card.svg",
                              height: 50,
                            ),
                            SizedBox(
                              width: 20,),


                            if(MediaQuery.of(context).size.width>880)    Text("Stripe Customer ID: 3342F21FA"),
                            SizedBox(
                              width: 20,),
                            if(MediaQuery.of(context).size.width>880)   Text("View Stripe Profile"),
                            SizedBox(
                              width: 20,),
                            const  SizedBox(width:28)],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0,top:12,bottom:12),
                          child: Row(children: [   if(MediaQuery.of(context).size.width<880)    Text("Stripe Customer ID: 3342F21FA"),
                            SizedBox(
                              width: 20,),
                            if(MediaQuery.of(context).size.width<880)   Text("View Stripe Profile"),
                            SizedBox(
                              width: 20,),],),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 28.0,top:12,bottom:12),
                          child: Row(
                            children: [
                              Text(
                                "Pending",
                                style: medium.copyWith(color: Colors.black),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.access_time,
                                size: 32,
                              ),


                            ],
                          ),
                        ),
                        const SizedBox(width:6),
                        SizedBox(
                          child: PaginatedDataTableExample2(

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
                            )
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ), mobile:Row(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.people_sharp,
                                size: 36,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                  "Customer Appointments: Sally Roberts",
                                  style: medium.copyWith(color: Colors.black,fontSize: 20)),





                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0,top:12,bottom:12),
                          child: Row(children: [
                            SizedBox(
                                width: 250,
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "Card ending in XX7772",
                                )),
                            SizedBox(
                              width: 6,),
                            SvgPicture.asset(
                              "assets/images/visa_card.svg",
                              height: 50,
                            ),



                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0,top:12,bottom:12),
                          child: Row(children: [   if(MediaQuery.of(context).size.width<880)    Text("Stripe Customer ID: 3342F21FA"),
                            SizedBox(
                              width: 20,),
                            if(MediaQuery.of(context).size.width<880)   Text("View Stripe Profile"),
                            SizedBox(
                              width: 20,),],),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 28.0,top:12,bottom:12),
                          child: Row(
                            children: [
                              Text(
                                "Pending",
                                style: medium.copyWith(color: Colors.black),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.access_time,
                                size: 32,
                              ),


                            ],
                          ),
                        ),
                        const SizedBox(width:6),
                        SizedBox(
                          child: PaginatedDataTableExample2(

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
                            )
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        )));
  }
}
