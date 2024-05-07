import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_constants.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? btnText;
  final double? btnWidth;
  final Function()? fun;
  final Color? bgColor;
  final Color? txtColor;
  const AppButton(
      {Key? key,
      required this.btnText,
      required this.fun,
      this.btnWidth,
      this.bgColor,
      this.txtColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: AppSizes.screenWidth * 0.3),
      child: GestureDetector(
        onTap: fun,
        child: Container(
          // AppSizes.screenWidth changes from 0.3 to 0.38
          // width:btnWidth?? AppSizes.screenWidth*0.25,
          decoration: BoxDecoration(
              color: bgColor ?? AppColors.kPrimary,
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
                child: Text(
              btnText!,
              style: btnHeading.copyWith(color: txtColor),
            )),
          ),
        ),
      ),
    );
  }
}

class PortalButton extends StatelessWidget {
  final String? btnText;
  final double? btnWidth;
  final Function()? fun;
  final double fontSize;
  final double borderRadius;
  final bool isBold;
  final Widget? widget;
  const PortalButton({Key? key,this.btnText,this.btnWidth,this.fun,this.fontSize=16.0,this.widget,this.borderRadius=4,this.isBold=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
      onTap: fun,
      child: Container(
        width: btnWidth,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: AppColors.kLightBlack, borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: widget??
                  Text(
               btnText!,
          style: TextStyle(color: Colors.white,fontSize:fontSize,
          fontWeight: isBold==true?FontWeight.bold:null,
          fontFamily: "Poppins"
          ),
        ),
            )),
      ),
    );
  }
}


class HeaderButton extends StatelessWidget {
  final String? btnText;
  final double? btnWidth;
  final Function()? fun;
  final double fontSize;
  final double borderRadius;
  final Widget? widget;
  const HeaderButton({Key? key,this.btnText,this.btnWidth,this.fun,this.fontSize=16.0,this.widget,this.borderRadius=4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: fun,
        child: Container(
          width: btnWidth,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: AppColors.kLightBlack, borderRadius: BorderRadius.circular(borderRadius)),
          child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: widget??
                    Text(
                      btnText!,
                      style: TextStyle(color: Colors.white,fontSize:fontSize,
                          fontFamily: "Poppins"
                      ),
                    ),
              )),
        ),
      );
  }
}
