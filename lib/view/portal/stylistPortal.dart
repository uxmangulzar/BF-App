import 'dart:io';

import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/AppSnackBar.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/commonWidget/webSideBar.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/view/admin/customer_appointmentScreen.dart';
import 'package:beauty_booking_app/view/admin/over_all_appointments.dart';
import 'package:beauty_booking_app/view/portal/application_submitted_screen.dart';
import 'package:beauty_booking_app/view/portal/portalScaffold.dart';
import 'package:beauty_booking_app/view/portal/portalSideBar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class StylistPortal extends StatefulWidget {
  const StylistPortal({Key? key}) : super(key: key);

  @override
  State<StylistPortal> createState() => _StylistPortalState();
}

class _StylistPortalState extends State<StylistPortal> {
  bool checkbox1Value = false;
  bool checkbox2Value = false;
  List<Widget> itemPhotosWidgetList = <Widget>[];
  final ImagePicker _picker = ImagePicker();
  File? file;
  List<XFile>? photo = <XFile>[];
  List<XFile> itemImagesList = <XFile>[];
  /// new img


  List<Widget> itemPhotosWidgetList1 = <Widget>[];
  final ImagePicker _picker1 = ImagePicker();
  File? file1;
  List<XFile>? photo1 = <XFile>[];
  List<XFile> itemImagesList1 = <XFile>[];


  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return PortalScaffold(


      body: Responsive(
        desktop:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only( top: 16.0,left: 90),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 12, bottom: 6),
              child: Row(
                children: [
                  Text(
                    "Apply Now",
                    style: medium.copyWith(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                    child: firstColumn()),
                Expanded( flex:1, child: secondColumn()),
                Expanded(flex:2 ,child: SizedBox())

              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                    child: newWidet1()),
                Expanded(flex: 1, child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    uploadIMg(),
                    uploadIMg1(),
                  ],
                )),
                Expanded(flex: 2,child: SizedBox()
                ),

              ],
            ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 1,child: SizedBox()),
                Expanded(flex: 1,
                  child:  Center(
                    child: SizedBox(
                      width:200,
                      child: PortalButton(
                        btnText: "Submit",
                        fun: (){
                          Get.to(()=>const ApplicationSubmitted());
                        },
                        // fontSize: 23,
                      ),
                    ),
                  ),
                ),
                const Expanded(flex: 2, child: SizedBox())

              ],
            ),
          ],
        ),
          ),
        ),
        tablet:
        MediaQuery.of(context).size.width>1080?


        Row(
          children: [
            portalSideBar(context),
            // Text(MediaQuery.of(context).size.width.toString()),
            Expanded(

                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 32.0, top: 12, bottom: 12),
                          child: Row(
                            children: [

                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Apply Now",
                                style: medium.copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(

                                child: firstColumn()),
                            Expanded( child: secondColumn()),
                            Expanded(child: SizedBox())

                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(

                                child: newWidet1()),
                            Expanded( child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                uploadIMg(),
                                uploadIMg1(),
                              ],
                            )),
                            Expanded(child: SizedBox()
                            ),






                          ],
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: SizedBox()),
                            Center(
                              child:  SizedBox(
                                width:200,
                                child: PortalButton(
                                  btnText: "Submit",
                                  // fontSize: 23,
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox())

                          ],
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ):
          Row(
            children: [
              portalSideBar(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Apply Now",
                              style: medium.copyWith(color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      firstColumn(),
                      secondColumn(),
                      uploadIMg(),
                      uploadIMg1(),
                      newWidet1(),

                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                      const  Center(
                        child:  SizedBox(
                          width:200,
                          child: PortalButton(
                            btnText: "Submit",
                            // fontSize: 23,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        mobile:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 12),
                child: Row(
                  children: [

                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Apply Now",
                      style: medium.copyWith(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
              firstColumn(),
              secondColumn(),
              uploadIMg(),
              uploadIMg1(),
              newWidet1(),

              SizedBox(
                height: AppSizes.appHorizontalSm,
              ),
              const  Center(
               child:  SizedBox(
                  width:200,
                  child: PortalButton(
                    btnText: "Submit",
                    // fontSize: 23,
                  ),
                ),
             ),
              SizedBox(
                height: AppSizes.appHorizontalSm,
              ),
            ],
          ),
        ),
      ),
      action: Responsive(
          desktop:
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "Stylist Portal",
                      style: titleHeading.copyWith(fontSize: 36),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Text(
                    //    "Stylist Portal",
                    //    style: titleHeading,
                    //  ),
                    //  SizedBox(
                    //    height: AppSizes.appVerticalSm,
                    //  ),
                    Row(
                      children: [
                        HeaderButton(
                          btnText: "Apply",
                          fun: () {Get.to(()=>StylistPortal());},
                        ),
                        SizedBox(
                          width: AppSizes.appVerticalSm,
                        ),
                        HeaderButton(
                          btnText: "LogIn",
                          fun: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          tablet:
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "Stylist Portal",
                      style: titleHeading.copyWith(fontSize: 36),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Text(
                    //    "Stylist Portal",
                    //    style: titleHeading,
                    //  ),
                    //  SizedBox(
                    //    height: AppSizes.appVerticalSm,
                    //  ),
                    Row(
                      children: [
                        HeaderButton(
                          btnText: "Apply",
                          fun: () {Get.to(()=>StylistPortal());},
                        ),
                        SizedBox(
                          width: AppSizes.appVerticalSm,
                        ),
                        HeaderButton(
                          btnText: "LogIn",
                          fun: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          mobile: const SizedBox()));
  }

  Widget firstColumn() {
    return Padding(
      padding: EdgeInsets.all(AppSizes.appVerticalSm),
      child: Column(
        children: [

          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "First Name",

                ),
              ),
              SizedBox(
                width: AppSizes.appVerticalSm,
              ),
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Last Name",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Business Name",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Email Address",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Password",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Confirm",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Phone",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Social Media/Website ",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),

          // Row(
          //   children: [
          //     SizedBox(
          //       width:195,
          //       child: AppTextField(
          //         controller: TextEditingController(),
          //         hintTxt: "City",
          //       ),
          //     ),
          //     SizedBox(width: AppSizes.appVerticalSm,),
          //     SizedBox(
          //       width:195,
          //       child: AppTextField(
          //         controller: TextEditingController(),
          //         hintTxt: "State",
          //       ),
          //     ),
          //     SizedBox(width: AppSizes.appVerticalSm,),
          //     SizedBox(
          //       width:195,
          //       child: AppTextField(
          //         controller: TextEditingController(),
          //         hintTxt: "Zip",
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget secondColumn() {
    return Padding(
      padding: EdgeInsets.all(AppSizes.appVerticalSm),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
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
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "City",
                ),
              ),
              SizedBox(
                width: AppSizes.appVerticalSm,
              ),
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "State",
                ),
              ),
              SizedBox(
                width: AppSizes.appVerticalSm,
              ),
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Zip",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Paypal Email",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Reference 1 Name",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Reference 1 Phone Number",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Reference 1 Name",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: TextEditingController(),
                  hintTxt: "Reference 1 Phone Number",
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),

          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     InkWell(
          //         onTap: () {
          //           pickPhotoFromGallery();
          //         },
          //         child: const Icon(
          //           Icons.cloud_upload,
          //           size: 40,
          //         )),
          //     SizedBox(
          //       width: AppSizes.appVerticalSm,
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(8),
          //           border: Border.all(color: AppColors.kBGGreyColor)),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           "Upload (up to 10) Photos",
          //           style: mediumText.copyWith(color: Colors.black),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          //
          // SizedBox(
          //   height: AppSizes.appVerticalSm,
          // ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         padding: const EdgeInsets.all(8),
          //         decoration: BoxDecoration(
          //             color: AppColors.kRedColor,
          //             borderRadius: BorderRadius.circular(8)),
          //         child: const Center(
          //             child: Text(
          //           "Delete",
          //           style: TextStyle(color: Colors.white),
          //         )),
          //       ),
          //     ),
          //     SizedBox(
          //       width: AppSizes.appVerticalXL,
          //     ),
          //     Expanded(
          //       child: Container(
          //         padding: const EdgeInsets.all(8),
          //         decoration: BoxDecoration(
          //             color: AppColors.kPrimary,
          //             borderRadius: BorderRadius.circular(8)),
          //         child: const Center(
          //             child: Text(
          //           "Update",
          //           style: TextStyle(color: Colors.white),
          //         )),
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }



  Widget newWidet1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Check all that apply",style: medium.copyWith(fontSize: 16,color: Colors.black),),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                checkColor: AppColors.kWhite,
                activeColor: AppColors.kPrimary,
                value: checkbox2Value,
                onChanged: (newValue) {
                  setState(() {
                    checkbox2Value = newValue!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "I'm willing to travel to clients ",
                  style: mediumText.copyWith(color: Colors.black,fontSize: 16),
                ),
              )
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                checkColor: AppColors.kWhite,
                activeColor: AppColors.kPrimary,
                value: checkbox1Value,
                onChanged: (newValue) {
                  setState(() {
                    checkbox1Value = newValue!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Clients will come to me",
                  style: mediumText.copyWith(color: Colors.black,fontSize: 16),
                ),
              )
            ],
          ),
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),

        ],
      ),
    );
  }
  Widget uploadIMg(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
                onTap: () {
                  pickPhotoFromGallery();
                },
                child: const Icon(
                  Icons.cloud_upload,
                  size: 60,
                )),
            SizedBox(
              width: AppSizes.appVerticalSm,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Upload the a photo of your Cosmology Licence",
                  style: mediumText.copyWith(color: Colors.black),
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: AppSizes.appVerticalSm,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                itemPhotosWidgetList.length,
                    (index) => Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: itemPhotosWidgetList[index],
                  ),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              itemPhotosWidgetList.removeWhere((element) =>
                              element == itemPhotosWidgetList[index]);
                            });
                          },
                          child: const CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.kPrimary,
                              child: Icon(
                                Icons.close,
                                color: AppColors.kWhite,
                              ))))
                ]),
              )),
        ),

      ],),
    );
}
  Widget uploadIMg1(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
                onTap: () {
                  pickPhotoFromGallery1();
                },
                child: const Icon(
                  Icons.cloud_upload,
                  size: 60,
                )),
            SizedBox(
              width: AppSizes.appVerticalSm,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Upload the front and back of your photo ID",
                  style: mediumText.copyWith(color: Colors.black),
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: AppSizes.appVerticalSm,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                itemPhotosWidgetList1.length,
                    (index) => Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: itemPhotosWidgetList1[index],
                  ),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              itemPhotosWidgetList1.removeWhere((element) =>
                              element == itemPhotosWidgetList1[index]);
                            });
                          },
                          child: const CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.kPrimary,
                              child: Icon(
                                Icons.close,
                                color: AppColors.kWhite,
                              ))))
                ]),
              )),
        ),

      ],),
    );
}
  pickPhotoFromGallery() async {
    photo = await _picker.pickMultiImage();
    if (photo != null) {
      setState(() {
        itemImagesList = itemImagesList + photo!;
        addImage();
        photo!.clear();
      });
    }
  }
  pickPhotoFromGallery1() async {
    photo1 = await _picker1.pickMultiImage();
    if (photo1 != null) {
      setState(() {
        itemImagesList1 = itemImagesList1 + photo1!;
        addImage1();
        photo1!.clear();
      });
    }
  }

  addImage() {
    for (var bytes in photo!) {
      itemPhotosWidgetList.add(SizedBox(
        height: 120.0,
        child: SizedBox(
          height: 110.0,
          width: 110.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              child: kIsWeb
                  ? Image.network(
                      File(bytes.path).path,
                      fit: BoxFit.contain,
                    )
                  : Image.file(
                      File(bytes.path),
                    ),
            ),
          ),
        ),
      ));
    }
    if (itemPhotosWidgetList.length > 9) {
      appSnackBar();
    }
  }
  addImage1() {
    for (var bytes in photo1!) {
      itemPhotosWidgetList1.add(SizedBox(
        height: 120.0,
        child: SizedBox(
          height: 110.0,
          width: 110.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              child: kIsWeb
                  ? Image.network(
                File(bytes.path).path,
                fit: BoxFit.contain,
              )
                  : Image.file(
                File(bytes.path),
              ),
            ),
          ),
        ),
      ));
    }
    if (itemPhotosWidgetList1.length > 9) {
      appSnackBar();
    }
  }
}
