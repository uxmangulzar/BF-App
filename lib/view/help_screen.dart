import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return BaseScaffold(title: "Help", isArrowBack:true,body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSizes.appVerticalXL,),
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
    ));
  }
}
