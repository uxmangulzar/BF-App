import 'dart:io';

import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/AppSnackBar.dart';
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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditStylistProfile extends StatefulWidget {
  const EditStylistProfile({Key? key}) : super(key: key);

  @override
  State<EditStylistProfile> createState() => _EditStylistProfileState();
}

class _EditStylistProfileState extends State<EditStylistProfile> {
  bool checkbox1Value = false;
  bool checkbox2Value = false;
  List<Widget> itemPhotosWidgetList = <Widget>[];
  final ImagePicker _picker = ImagePicker();
  File? file;
  List<XFile>? photo = <XFile>[];
  List<XFile> itemImagesList = <XFile>[];
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return WebBaseScaffold(
        body: Responsive(
                desktop: Row(
                  children: [
                    WebSideBar(context),
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
                                  SvgPicture.asset(
                                    "assets/images/profile.svg",
                                    height: 40,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Edit Stylist Profile: Ashley Smith",
                                    style: webTitleHeading,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: firstColumn()),
                                Expanded(child: secondColumn()),
                                Expanded(child: thirdColumn())
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
                tablet:Row(
                        children: [
                          WebSideBar(context),
                          Expanded(
                              child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 32.0, top: 12, bottom: 12),
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
                                        "Edit Stylist Profile: Ashley Smith",
                                        style:webTitleHeading)
                                    ],
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          firstColumn(),
                                          secondColumn(),
                                        ],
                                      ),
                                    )),

                                    // Flexible(child: Container(color:Colors.red ,child:Text("data"))),

                                    Expanded(child: thirdColumn())
                                  ],
                                )
                              ],
                            ),
                          )),
                        ],
                      )
                   ,
                mobile: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/profile.svg",
                              height: 24,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Edit Stylist Profile: Ashley Smith",
                              style:webTitleHeading
                            ),
                          ],
                        ),
                      ),
                      firstColumn(),
                      secondColumn(),
                      thirdColumn()
                    ],
                  ),
                ),
              )
            );
  }

  Widget firstColumn() {
    return Padding(
      padding: EdgeInsets.all(AppSizes.appVerticalSm),
      child: Column(
        children: [
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
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
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  isMaxLines: true,
                  controller: TextEditingController(),
                  hintTxt: "About my stylist expertise...",
                ),
              ),
            ],
          )

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
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
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
                  style: mediumText.copyWith(color: Colors.black),
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
                  style: mediumText.copyWith(color: Colors.black),
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
              InkWell(
                  onTap: () {
                    pickPhotoFromGallery();
                  },
                  child: const Icon(
                    Icons.cloud_upload,
                    size: 40,
                  )),
              SizedBox(
                width: AppSizes.appVerticalSm,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.kBGGreyColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Upload (up to 10) Photos",
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
          SizedBox(
            height: AppSizes.appVerticalSm,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppColors.kRedColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                      child: Text(
                    "Delete",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                width: AppSizes.appVerticalXL,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppColors.kPrimary,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                      child: Text(
                    "Update",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget thirdColumn() {
    return Padding(
      padding: EdgeInsets.all(AppSizes.appVerticalSm),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppSizes.appVerticalSm,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Reviews",style: webBoldTitle.copyWith(fontSize: 23),),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                  SizedBox(
                                    height: AppSizes.appVerticalSm,
                                  ),
                                  Text(
                                      "Genie did an amazing job on my hair! I'll definitely be booking with her again.")
                                ],
                              )),
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.close,
                                    size: 12,
                                  ))
                            ],
                          ),
                        )))
          ],
        ),
      ),
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
}
