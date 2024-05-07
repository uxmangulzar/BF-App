import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/webSideBar.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:flutter/material.dart';

class WebBaseScaffold extends StatefulWidget {
  final Widget? body;
  final bool? isArrowBack;
  const WebBaseScaffold(
      {Key? key, required this.body, this.isArrowBack = false})
      : super(key: key);

  @override
  State<WebBaseScaffold> createState() => _WebBaseScaffoldState();
}

class _WebBaseScaffoldState extends State<WebBaseScaffold> {
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
              height: 120,
              color: AppColors.kPrimary,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppSizes.appVerticalXL),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "BF",
                      style: medium.copyWith(fontSize: 40),
                    ),
                    const Spacer(),
                    const Text(
                      "Admin Portal",
                      style: titleHeading,
                    )
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
              height: 90,
              color: AppColors.kPrimary,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppSizes.appVerticalXL),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "BF",
                      style: medium.copyWith(fontSize: 40),
                    ),
                    const Spacer(),
                    const Text(
                      "Admin Portal",
                      style: titleHeading,
                    )
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
                "BF",
                style: medium.copyWith(fontSize: 30),
              ),
              centerTitle: false,
              elevation: 0,
              actions: const [
                Center(
                    child: Text(
                  "Admin Portal",
                  style: titleHeading,
                )),
                SizedBox(width: 8)
              ],
            ),
            body: widget.body!));
  }
}
