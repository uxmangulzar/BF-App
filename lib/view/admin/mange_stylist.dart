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

class MangeStylist extends StatefulWidget {
  const MangeStylist({Key? key}) : super(key: key);

  @override
  State<MangeStylist> createState() => _MangeStylistState();
}

class _MangeStylistState extends State<MangeStylist> {
  @override
  Widget build(BuildContext context) {
    return
      WebBaseScaffold(
        body:Responsive(desktop:
        Row(
          children: [
            WebSideBar(context),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0,top:12,bottom:12),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/profile.svg",
                              height: 40,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          const  Text(
                              "Manage Stylists",
                              style: webTitleHeading,
                            ),


                            const Spacer(),
                            Text("Filter (Name/Email) :",style: webMediumTxt.copyWith(fontSize: 16),),
                            const SizedBox(width:6),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: PaginatedDataTableExample3(
                        ),
                      ),

                    ],
                  ),
                ))
          ],
        ), tablet:
        Row(
          children: [
            WebSideBar(context),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0,top:12,bottom:12),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/profile.svg",
                              height: 40,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "Manage Stylists",
                              style: webTitleHeading,
                            ),


                            const Spacer(),
                            if(MediaQuery.of(context).size.width>840)   Text("Filter (Name/Email) :",style: webMediumTxt.copyWith(fontSize: 16)),
                            const SizedBox(width:6),
                            if(MediaQuery.of(context).size.width>840)   SizedBox(
                                width: 250,
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "Style By Genie",
                                )),
                            const  SizedBox(width:28)
                          ],
                        ),
                      ),
                      if(MediaQuery.of(context).size.width<840)    Padding(
                        padding: const EdgeInsets.only(left: 32.0,top:12,bottom:12),
                        child: Row(
                          children: [



                          Text("Filter (Name/Email) :", style: smallHeading.copyWith(fontWeight: FontWeight.bold)),
                            const SizedBox(width:6),
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
                      PaginatedDataTableExample3(
                      ),

                    ],
                  ),
                ))
          ],
        ), mobile:Row(
          children: [
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0,top:12,bottom:12),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/profile.svg",
                              height: 40,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                           const Text(
                              "Manage Stylists",
                              style: webTitleHeading
                            ),


                            const Spacer(),
                            if(MediaQuery.of(context).size.width>840)   Text("Filter (Name/Email) :",  style: webMediumTxt.copyWith(fontSize: 16)),
                            const SizedBox(width:6),
                            if(MediaQuery.of(context).size.width>840)   SizedBox(
                                width: 250,
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "Style By Genie",
                                )),
                            const  SizedBox(width:28)
                          ],
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(left: 32.0,top:12,bottom:12),
                        child: Row(
                          children: [



                            Text("Filter (Name/Email) :", style: webMediumTxt.copyWith(fontSize: 16)),
                            const SizedBox(width:6),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PaginatedDataTableExample3(
                        ),
                      ),

                    ],
                  ),
                ))
          ],
        ),));
  }
}
