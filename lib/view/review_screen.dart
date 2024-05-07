import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:flutter/material.dart';
class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: "Add Review",
        isArrowBack: true
        ,body:
        Padding(
      padding: const EdgeInsets.all(8.0),
      child:
         Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSizes.appVerticalXL,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                5,
                    (index) => const Icon(
                  Icons.star,
                  size: 24,
                )),
          ),
        ),
        SizedBox(height: AppSizes.appVerticalSm,),
        AppTextField(controller: TextEditingController(),hintTxt: "Genie did an amazing job on my hair!\n I'll definitely be booking with her again.",
        isMaxLines: true,
        ),
        SizedBox(height: AppSizes.appVerticalSm,),
        const Text("CASH TIPS ARE PREFERRED!"),
        SizedBox(height: AppSizes.appVerticalSm,),
        AppButton(btnText: "Submit Review",fun: (){})
      ],),
    ));
  }
}
