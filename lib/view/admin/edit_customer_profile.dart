import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
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

class EditCustomerProfile extends StatefulWidget {
  const EditCustomerProfile({Key? key}) : super(key: key);

  @override
  State<EditCustomerProfile> createState() => _EditCustomerProfileState();
}

class _EditCustomerProfileState extends State<EditCustomerProfile> {
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return WebBaseScaffold(
        body:
        true?
        Responsive(desktop: Row(
          children: [
            WebSideBar(context),
            Expanded(
                child:
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
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
                              Text(
                                "Edit Customer Profile: Sally Roberts",
                                style: webTitleHeading
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width:300,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "Sally",
                              ),
                            ),
                            SizedBox(width: AppSizes.appVerticalSm,),
                            SizedBox(
                              width:300,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "RobertSon",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:610,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "My Street Address (including Apt/Unit)",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:195,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "City",
                              ),
                            ),
                            SizedBox(width: AppSizes.appVerticalSm,),
                            SizedBox(
                              width:195,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "State",
                              ),
                            ),
                            SizedBox(width: AppSizes.appVerticalSm,),
                            SizedBox(
                              width:195,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "Zip",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:610,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "+1 (949) 555-1212",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:610,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "sallyrobertson@gmail.com",
                              ),
                            ),
                          ],
                        ),


                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:300,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "Exp Date",
                              ),
                            ),
                            SizedBox(width: AppSizes.appVerticalSm,),
                            SizedBox(
                              width:300,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "CVV",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),


                        Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [

                            Container(
                              padding:const EdgeInsets.all(8),
                              decoration: BoxDecoration(color: AppColors.kRedColor,borderRadius: BorderRadius.circular(8)), child: Text("Delete",style: TextStyle(color:Colors.white),),),
                            const  SizedBox(width: 8),
                            Container(
                              padding:const EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(8)), child: Text("Save Profile",style: TextStyle(color:Colors.white),),),
                            const  SizedBox(width: 40),
                          ],
                        ),


                      ],
                    ),
                  ),
                ))
          ],
        ), tablet:
        Container(
          margin: EdgeInsets.only(right:AppSizes.appVerticalXXXL),
          child: Row(
            children: [
              WebSideBar(context),
              Expanded(
                  child:
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
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
                                Text(
                                  "Edit Customer Profile: Sally Roberts",
                                  style:webTitleHeading
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "Sally",
                                ),
                              ),
                              SizedBox(width: AppSizes.appVerticalSm,),
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "RobertSon",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: AppSizes.appVerticalSm,),
                          Row(
                            children: [
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "My Street Address (including Apt/Unit)",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: AppSizes.appVerticalSm,),
                          Row(
                            children: [
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "City",
                                ),
                              ),
                              SizedBox(width: AppSizes.appVerticalSm,),
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "State",
                                ),
                              ),
                              SizedBox(width: AppSizes.appVerticalSm,),
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "Zip",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: AppSizes.appVerticalSm,),
                          Row(
                            children: [
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "+1 (949) 555-1212",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: AppSizes.appVerticalSm,),
                          Row(
                            children: [
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "sallyrobertson@gmail.com",
                                ),
                              ),
                            ],
                          ),


                          SizedBox(height: AppSizes.appVerticalSm,),
                          Row(
                            children: [
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "Exp Date",
                                ),
                              ),
                              SizedBox(width: AppSizes.appVerticalSm,),
                              Expanded(
                                child: AppTextField(
                                  controller: TextEditingController(),
                                  hintTxt: "CVV",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: AppSizes.appVerticalSm,),


                          Row(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [

                              Expanded(
                                child: Container(
                                  padding:const EdgeInsets.all(8),
                                  decoration: BoxDecoration(color: AppColors.kRedColor,borderRadius: BorderRadius.circular(8)), child: Center(child: Text("Delete",style: TextStyle(color:Colors.white),)),),
                              ),
                              const  SizedBox(width: 8),
                              Expanded(
                                child: Container(
                                  padding:const EdgeInsets.all(8),
                                  decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(8)), child: Center(child: Text("Save Profile",style: TextStyle(color:Colors.white),)),),
                              ),

                            ],
                          ),


                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),

          mobile: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                      Text(
                        "Edit Customer Profile: Sally Roberts",
                        style: webTitleHeading
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(

                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "Sally",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "RobertSon",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "My Street Address (including Apt/Unit)",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "City",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "State",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "Zip",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "+1 (949) 555-1212",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "sallyrobertson@gmail.com",
                      ),
                    ),
                  ],
                ),


                SizedBox(height: AppSizes.appVerticalSm,),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "Exp Date",
                      ),
                    ),
                    SizedBox(width: AppSizes.appVerticalSm,),
                    Expanded(
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintTxt: "CVV",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.appVerticalSm,),

                Row(
                  mainAxisAlignment:  MainAxisAlignment.center,
                  children: [

                    Expanded(
                      child: Container(
                        padding:const EdgeInsets.all(8),
                        decoration: BoxDecoration(color: AppColors.kRedColor,borderRadius: BorderRadius.circular(8)), child: Center(child: Text("Delete",style: TextStyle(color:Colors.white),)),),
                    ),
                    const  SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        padding:const EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(8)), child: Center(child: Text("Save Profile",style: TextStyle(color:Colors.white),)),),
                    ),
                    const  SizedBox(width: 40),
                  ],
                ),


              ],
            ),
          ),
        ),):
        Row(
          children: [
            WebSideBar(context),
            Expanded(
                child:
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
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
                              Text(
                                "Edit Customer Profile: Sally Roberts",
                                style: medium.copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width:300,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "Sally",
                              ),
                            ),
                            SizedBox(width: AppSizes.appVerticalSm,),
                            SizedBox(
                              width:300,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "RobertSon",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:610,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "My Street Address (including Apt/Unit)",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:195,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "City",
                              ),
                            ),
                            SizedBox(width: AppSizes.appVerticalSm,),
                            SizedBox(
                              width:195,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "State",
                              ),
                            ),
                            SizedBox(width: AppSizes.appVerticalSm,),
                            SizedBox(
                              width:195,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "Zip",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:610,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "+1 (949) 555-1212",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:610,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "sallyrobertson@gmail.com",
                              ),
                            ),
                          ],
                        ),


                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            SizedBox(
                              width:300,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "Exp Date",
                              ),
                            ),
                            SizedBox(width: AppSizes.appVerticalSm,),
                            SizedBox(
                              width:300,
                              child: AppTextField(
                                controller: TextEditingController(),
                                hintTxt: "CVV",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),


                        Row(
                           mainAxisAlignment:  MainAxisAlignment.center,
                          children: [

                            Container(
                              padding:const EdgeInsets.all(8),
                              decoration: BoxDecoration(color: AppColors.kRedColor,borderRadius: BorderRadius.circular(8)), child: Text("Delete",style: TextStyle(color:Colors.white),),),
                            const  SizedBox(width: 8),
                            Container(
                              padding:const EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(8)), child: Text("Save Profile",style: TextStyle(color:Colors.white),),),
                            const  SizedBox(width: 40),
                          ],
                        ),


                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
