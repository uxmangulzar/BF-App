import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/view/portal/portalScaffold.dart';
import 'package:beauty_booking_app/view/portal/portalSideBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PortalHelpScreen extends StatelessWidget {
  const PortalHelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return PortalScaffold(body:  Row(
      children: [
        portalSideBar(context),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizes.appVerticalXL,),
              Row(
                children: [
                  SvgPicture.asset("assets/images/help.svg",height: 48,color: Colors.black,),
                  SizedBox(width: AppSizes.appVerticalSm,),
                   Text("Help/FAQ",style: medium.copyWith(fontSize: 28,color: Colors.black),),
                ],
              ),
              SizedBox(height: AppSizes.appVerticalSm,),
              InkWell(onTap: (){}, child: Text("Frequently Asked Questions",style: TextStyle(
                decoration: TextDecoration.underline,
              ))),
              SizedBox(height: AppSizes.appVerticalSm,),
              InkWell(onTap: (){}, child: Text("Terms of Service",style: TextStyle(
                decoration: TextDecoration.underline,
              ))),
              SizedBox(height: AppSizes.appVerticalXL,),
              Row(
                children: [
                  SvgPicture.asset("assets/images/calling.svg",height: 36,),
                  SizedBox(width: AppSizes.appVerticalSm,),
                  const Text("1-800-SUPPORT"),
                ],
              ),
              SizedBox(height: AppSizes.appVerticalSm,),
              Row(
                children: [
                  SvgPicture.asset("assets/images/mail.svg",height: 36,),
                  SizedBox(width: AppSizes.appVerticalSm,),
                  InkWell(onTap: (){}, child: Text("support@example.com",style: TextStyle(
                    decoration: TextDecoration.underline,
                  ))),
                ],
              ),
            ],),
        ),
      ],
    ),action:    Responsive(
        desktop:
        Column(
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
        tablet:
        Column(
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
        mobile:               Center(child: Text("Style by Genie", style: titleHeading,)),
    ),);
  }
}
