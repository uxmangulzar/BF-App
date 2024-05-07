import 'package:beauty_booking_app/commonWidget/customAppBar.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_constants.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BaseScaffold extends StatefulWidget {
  String? title;
  Widget? body;
  bool? isArrowBack;

  BaseScaffold(
      {Key? key,
      required this.title,
      required this.body,
      this.isArrowBack = false})
      : super(key: key);
  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // AppSizes().init(context);
    return GetPlatform.isWeb?
    Scaffold(
      body: Column(
        children: [
          Container(
            // height: AppSizes.appVerticalXXL,
            height: AppSizes.appVerticalXXL,
            width:MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [AppColors.kPrimary,AppColors.kPrimaryNew,AppColors.kPrimaryNew
              ])
               // color: AppColors.kPrimary,
              // image: DecorationImage(image: AssetImage("assets/dashboard/bg.png",))
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppSizes.appVerticalXL),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("BF",style: medium.copyWith(fontSize: 64),),const Spacer(),
               const Text("Admin Portal",style: titleHeading,)
          ],),
            ),),
          Expanded(child: widget.body!),
        ],
      )):
    Scaffold(
        // backgroundColor: Colors.grey,
        key: _scaffoldKey,
        drawer:
        SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: AppColors.kPrimary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: AppSizes.appVerticalMd,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sally Smith",
                                    style: titleHeading,
                                  ),
                                  SizedBox(height: 6),
                                  Text("GlamN' Since 2023",
                                      style: smallHeading.copyWith(
                                          color: AppColors.kWhite)),
                                  SizedBox(height: 6),
                                  Divider(
                                    thickness: 2,
                                    color: AppColors.kWhite,
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: const Icon(
                                  Icons.close,
                                  color: AppColors.kWhite,
                                  size: 28,
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left : 46.0,top:16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed(RouteHelper.stypelProfile);
                                  Get.back();
                                },
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/findList.svg",
                                      height: 40,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        "Find Stylist",
                                        style: titleHeading,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(RouteHelper.profile);
                                  Get.back();
                                },
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/profile.svg",
                                      height: 40,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        "My Profile",
                                        style: titleHeading,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(RouteHelper.myappointments);
                                  Get.back();
                                },
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/findList.svg",
                                      height: 40,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        "My Appts",
                                        style: titleHeading,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(RouteHelper.bilinghistory);
                                  Get.back();
                                },
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/billingHistory.svg",
                                      height: 40,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        "Billing History",
                                        style: titleHeading,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(RouteHelper.help);
                                  Get.back();
                                },
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/help.svg",
                                      height: 40,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        "Help",
                                        style: titleHeading,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/logout.svg",
                                    height: 40,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      "Logout",
                                      style: titleHeading,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ),
        appBar:
        AppBar(
          automaticallyImplyLeading: false,
          leading: widget.isArrowBack!
              ? InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back_ios))
              : null,
          backgroundColor: AppColors.kPrimary,
          title: Text(
            widget.title!,
            style: boldAppBarTitle,
          ),
          centerTitle: true,
          elevation: 0,
          // leading:const Icon(Icons.arrow_back_ios),
          actions: [
            GestureDetector(
              onTap: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius:
                          BorderRadius.circular(AppConstants.borderRadius)),
                  child: const Icon(
                    Icons.menu,
                    color: AppColors.kLightBlack,
                  )),
            )
          ],
        ),
        body: widget.body);
  }
}
