import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/webSideBar.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:flutter/material.dart';

class PortalScaffold extends StatefulWidget {
  final Widget? body;
  final Widget? action;
  final bool? isArrowBack;
  const PortalScaffold(
      {Key? key, required this.body, this.isArrowBack = false,this.action})
      : super(key: key);

  @override
  State<PortalScaffold> createState() => _PortalScaffoldState();
}

class _PortalScaffoldState extends State<PortalScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return Responsive(
        desktop: Scaffold(
            body: Column(
              key: _scaffoldKey,
              children: [
                Container(
                  // height: 120,
                  // color: AppColors.kPrimary,
              width:MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [AppColors.kPrimary,AppColors.kPrimaryNew,AppColors.kPrimaryNew
                  ])),

                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: AppSizes.appVerticalMd,vertical: AppSizes.appVerticalSm),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "BF",
                          style: medium.copyWith(fontSize: 64),
                        ),

                        Expanded(
                            child: widget.action!)
                      ],
                    ),
                  ),
                ),
                Expanded(child: widget.body!),
              ],
            )),
        tablet: Scaffold(
            body: Column(
              key: _scaffoldKey,
              children: [
                Container(
                  // height: 90,
                  // color: AppColors.kPrimary,
                  width:MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [AppColors.kPrimary,AppColors.kPrimaryNew,AppColors.kPrimaryNew
                      ])),
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: AppSizes.appVerticalMd),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "BF",
                          style: medium.copyWith(fontSize: 64),
                        ),
                        const Spacer(),
                        widget.action!
                      ],
                    ),
                  ),
                ),
                Expanded(child: widget.body!),
              ],
            )),
        mobile: Scaffold(
            drawer: WebSideBar(context),
            appBar: AppBar(
              backgroundColor: AppColors.kPrimary,
              title: Text(
                "Stylist Portal",
                style: medium.copyWith(fontSize: 30),
              ),
              centerTitle: false,
              elevation: 0,
              actions:  [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PortalButton(
                    btnText: "Apply",
                    fun: () {},
                  ),
                ),
                SizedBox(
                  width: AppSizes.appVerticalSm,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PortalButton(
                    btnText: "LogIn",
                    fun: () {},
                  ),
                ),
              ],
            ),
            body: widget.body!));
  }
}
