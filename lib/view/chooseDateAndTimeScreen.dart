import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
class ChooseDateAndTime extends StatefulWidget {
  const ChooseDateAndTime({Key? key}) : super(key: key);

  @override
  State<ChooseDateAndTime> createState() => _ChooseDateAndTimeState();
}

class _ChooseDateAndTimeState extends State<ChooseDateAndTime> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  RxString pickedDate="Choose Date".obs;
  RxBool isDatePicked=false.obs;
  RxString pickedTime="Choose Time".obs;
  RxBool isTimePicked=false.obs;
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return BaseScaffold(title: "Choose Time/Date", body: Obx(()=>
       Column(children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/dashboard/braiding.jpg",
                  fit: BoxFit.cover,
                  height: 110,
                  width: 110,
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("500 ft"),
                        const Text("Style By Genie"),
                        const Text("Blow-dry, Curling"),
                        SizedBox(
                          height: AppSizes.appVerticalXs,
                        ),
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

                      ],
                    ),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    btnText: "Profile",
                    fun: () {},
                  ),
                  SizedBox(
                    height: AppSizes.screenHeight * 0.005,
                  ),
                  AppButton(
                    btnText: "Directions",
                    fun: () {},
                  )
                ],
              ),

            ],
          ),
        ),
         Container(
           height: AppSizes.screenHeight * 0.08,
           width: AppSizes.screenWidth/1.5,
           margin:const EdgeInsets.only(top:12),
           decoration: const BoxDecoration(
             color: AppColors.kWhite,
             boxShadow: [
               BoxShadow(
                 color: Color(0xffDDDDDD),
                 blurRadius: 6.0,
                 spreadRadius: 2.0,
                 offset: Offset(0.0, 0.0),
               )
             ],
           ),
           child: Center(
               child: Text(
                 "Select A Different Time.",
                 style: medium.copyWith(
                     color: Colors.black,fontWeight: FontWeight.normal, fontSize: 20),
               )),
         ),

        InkWell(
          onTap: () => _selectDate(context),
          child:
          Container(
            height: AppSizes.screenHeight * 0.08,
            width: AppSizes.screenWidth/1.5,
            margin:const EdgeInsets.only(top:12),
            decoration: const BoxDecoration(
              color: AppColors.kWhite,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: Center(
                child: Text(
                  pickedDate.value,
                  style: medium.copyWith(
                      color: Colors.black,fontWeight: FontWeight.normal, fontSize: 20),
                )),
          ),
        ),
        InkWell(
          onTap:() => _selectTime(context) ,
          child: Container(
            height: AppSizes.screenHeight * 0.08,
            width: AppSizes.screenWidth/1.5,
            margin:const EdgeInsets.only(top:12),
            decoration: const BoxDecoration(
              color: AppColors.kWhite,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: Center(
                child: Text(
                  pickedTime.value,
                  style: medium.copyWith(
                      color: Colors.black,fontWeight: FontWeight.normal, fontSize: 20),
                )),
          ),
        ),

         SizedBox(
           height: AppSizes.appVerticalXs,
         ),
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: AppButton(
               btnText: "Done",
               // btnWidth: AppSizes.screenWidth / 3,
               fun: () {
                 Get.toNamed(RouteHelper.joinBeauty);
               }),
         ),
      ],),
    ));
  }
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        pickedDate.value = DateFormat('yyyy-MM-dd').format(selectedDate); // Format the date
      });
    }
    else{
      pickedDate.value = DateFormat('yyyy-MM-dd').format(selectedDate); // Format the date

    }
  }
  Future<void> _selectTime(BuildContext context) async{

    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      print("==========================");

      selectedTime = picked;
      pickedTime.value = selectedTime.format(context);
    }
    else{
      pickedTime.value = selectedTime.format(context);
    }
  }
}
