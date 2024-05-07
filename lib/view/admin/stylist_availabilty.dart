import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/commonWidget/webSideBar.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_constants.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/util/web_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../portal/portalSideBar.dart';

enum Select { soonest, otherTime }

class StylistAvailability extends StatefulWidget {
  const StylistAvailability({Key? key}) : super(key: key);

  @override
  State<StylistAvailability> createState() => _StylistAvailabilityState();
}

class _StylistAvailabilityState extends State<StylistAvailability> {
  Select select = Select.soonest;
  @override
  Widget build(BuildContext context) {
    return


      WebBaseScaffold(
        body:
        true? Responsive(desktop:  Row(
          children: [
            portalSideBar(context),
            Expanded(
              child: Stack(
                children: [
                  // Text(MediaQuery.of(context).size.width.toString()),
                  Padding(
                    padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width>960? 70:12),
                    child: SfCalendar(
                      view: CalendarView.month,
                      showNavigationArrow: true,
                      cellEndPadding: 16,
                      monthCellBuilder:
                          (BuildContext context, MonthCellDetails details) {
                        return Container(
                          // color: Colors.red,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 0.1)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(details.date.day.toString()),
                          ),
                        );
                      },
                      headerStyle:
                      const CalendarHeaderStyle(textAlign: TextAlign.center),
                      monthViewSettings: const MonthViewSettings(
                          agendaItemHeight: 30,
                          monthCellStyle: MonthCellStyle(textStyle: TextStyle())),
                      onTap: (CalendarTapDetails details) {
                        _showAddEventDialog(details.date!);
                      },
                      cellBorderColor: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.black,
                          size: 100,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Stylist Availability",
                                style: webTitleHeading,
                              ),
                              Row(
                                children: [
                                  Text("Filter By Stylist",
                                      style: smallHeading.copyWith(
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 6),
                                  SizedBox(
                                      width: 150,
                                      // height: 40,
                                      child: TextFormField(
                                          controller: TextEditingController(),
                                          decoration: InputDecoration(
                                            hintText: "Style by genie",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey), //<-- SEE HERE
                                              borderRadius: BorderRadius.circular(
                                                  AppConstants.borderRadius),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey), //<-- SEE HERE
                                              borderRadius: BorderRadius.circular(
                                                  AppConstants.borderRadius),
                                            ),
                                          ))),
                                  const SizedBox(width: 28)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                  // Positioned( right: 0,top: 5, child: CheckboxExample( dateTime: DateTime.now(),)),
                ],
              ),
            ),
          ],
        ), tablet:  Row(
          children: [
            WebSideBar(context),
            Expanded(
              child: Column(
                children: [
                  // Text(MediaQuery.of(context).size.width.toString()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.black,
                          size: 48,
                        ),
                        Text(
                          "Stylist Availability",
                          style: webTitleHeading,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text("Filter By Stylist",
                                style: smallHeading.copyWith(
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(width: 6),
                            SizedBox(
                                width: 150,
                                // height: 40,
                                child: TextFormField(
                                    controller: TextEditingController(),
                                    decoration: InputDecoration(
                                      hintText: "Style by genie",
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey), //<-- SEE HERE
                                        borderRadius: BorderRadius.circular(
                                            AppConstants.borderRadius),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey), //<-- SEE HERE
                                        borderRadius: BorderRadius.circular(
                                            AppConstants.borderRadius),
                                      ),
                                    ))),
                            const SizedBox(width: 28)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:12),
                    child: SfCalendar(
                      view: CalendarView.month,
                      showNavigationArrow: true,
                      cellEndPadding: 16,
                      monthCellBuilder:
                          (BuildContext context, MonthCellDetails details) {
                        return Container(
                          // color: Colors.red,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 0.1)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(details.date.day.toString()),
                          ),
                        );
                      },
                      headerStyle:
                      const CalendarHeaderStyle(textAlign: TextAlign.center),
                      monthViewSettings: const MonthViewSettings(
                          agendaItemHeight: 30,
                          monthCellStyle: MonthCellStyle(textStyle: TextStyle())),
                      onTap: (CalendarTapDetails details) {
                        _showAddEventDialog(details.date!);
                      },
                      cellBorderColor: Colors.black,
                    ),
                  ),

                  // Positioned( right: 0,top: 5, child: CheckboxExample( dateTime: DateTime.now(),)),
                ],
              ),
            ),
          ],
        ), mobile:  Row(
          children: [

            Expanded(
              child: Column(
                children: [
                  // Text(MediaQuery.of(context).size.width.toString()),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.black,
                          size: 48,
                        ),
                        Text(
                          "Stylist Availability",
                          style:webTitleHeading
                        ),


                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Row(
                        children: [
                          Text("Filter By Stylist",
                              style: smallHeading.copyWith(
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(width: 6),
                          SizedBox(
                              width: 150,
                              // height: 40,
                              child: TextFormField(
                                  controller: TextEditingController(),
                                  decoration: InputDecoration(
                                    hintText: "Style by genie",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(
                                          AppConstants.borderRadius),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(
                                          AppConstants.borderRadius),
                                    ),
                                  ))),
                          const SizedBox(width: 28)
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width>960? 50:12),
                    child: SfCalendar(
                      view: CalendarView.month,
                      showNavigationArrow: true,
                      cellEndPadding: 16,
                      monthCellBuilder:
                          (BuildContext context, MonthCellDetails details) {
                        return Container(
                          // color: Colors.red,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 0.1)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(details.date.day.toString()),
                          ),
                        );
                      },
                      headerStyle:
                      const CalendarHeaderStyle(textAlign: TextAlign.center),
                      monthViewSettings: const MonthViewSettings(
                          agendaItemHeight: 30,
                          monthCellStyle: MonthCellStyle(textStyle: TextStyle())),
                      onTap: (CalendarTapDetails details) {
                        _showAddEventDialog(details.date!);
                      },
                      cellBorderColor: Colors.black,
                    ),
                  ),

                  // Positioned( right: 0,top: 5, child: CheckboxExample( dateTime: DateTime.now(),)),
                ],
              ),
            ),
          ],
        ),):

        MediaQuery.of(context).size.width<960?
        SingleChildScrollView(
          child: Row(
            children: [
              WebSideBar(context),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.black,
                            size: 48,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Stylist Availability",
                                style: medium.copyWith(
                                    color: Colors.black, fontSize: 28),
                              ),
                              Row(
                                children: [
                                  Text("Filter By Stylist",
                                      style: smallHeading.copyWith(
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 6),
                                  SizedBox(
                                      width: 150,
                                      // height: 40,
                                      child: TextFormField(
                                          controller: TextEditingController(),
                                          decoration: InputDecoration(
                                            hintText: "Style by genie",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey), //<-- SEE HERE
                                              borderRadius: BorderRadius.circular(
                                                  AppConstants.borderRadius),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey), //<-- SEE HERE
                                              borderRadius: BorderRadius.circular(
                                                  AppConstants.borderRadius),
                                            ),
                                          ))),
                                  const SizedBox(width: 28)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:MediaQuery.of(context).size.width<960? 8:50),
                      child: SfCalendar(
                        view: CalendarView.month,
                        showNavigationArrow: true,
                        cellEndPadding: 16,
                        monthCellBuilder:
                            (BuildContext context, MonthCellDetails details) {
                          return Container(
                            // color: Colors.red,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(details.date.day.toString()),
                            ),
                          );
                        },
                        headerStyle:
                        const CalendarHeaderStyle(textAlign: TextAlign.center),
                        monthViewSettings: const MonthViewSettings(
                            agendaItemHeight: 30,
                            monthCellStyle: MonthCellStyle(textStyle: TextStyle())),
                        onTap: (CalendarTapDetails details) {
                          _showAddEventDialog(details.date!);
                        },
                        cellBorderColor: Colors.black,
                      ),
                    ),
                  ],),
                ),
              ),
            ],
          ),
        ):
        Row(
            children: [
              WebSideBar(context),
              Expanded(
                child: Stack(
                  children: [
                    // Text(MediaQuery.of(context).size.width.toString()),
                    Padding(
                      padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width>960? 50:12),
                      child: SfCalendar(
                        view: CalendarView.month,
                        showNavigationArrow: true,
                        cellEndPadding: 16,
                        monthCellBuilder:
                            (BuildContext context, MonthCellDetails details) {
                          return Container(
                            // color: Colors.red,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(details.date.day.toString()),
                            ),
                          );
                        },
                        headerStyle:
                            const CalendarHeaderStyle(textAlign: TextAlign.center),
                        monthViewSettings: const MonthViewSettings(
                            agendaItemHeight: 30,
                            monthCellStyle: MonthCellStyle(textStyle: TextStyle())),
                        onTap: (CalendarTapDetails details) {
                          _showAddEventDialog(details.date!);
                        },
                        cellBorderColor: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.black,
                            size: 48,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Stylist Availability",
                                style: medium.copyWith(
                                    color: Colors.black, fontSize: 28),
                              ),
                              Row(
                                children: [
                                  Text("Filter By Stylist",
                                      style: smallHeading.copyWith(
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 6),
                                  SizedBox(
                                      width: 150,
                                      // height: 40,
                                      child: TextFormField(
                                          controller: TextEditingController(),
                                          decoration: InputDecoration(
                                            hintText: "Style by genie",
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey), //<-- SEE HERE
                                              borderRadius: BorderRadius.circular(
                                                  AppConstants.borderRadius),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey), //<-- SEE HERE
                                              borderRadius: BorderRadius.circular(
                                                  AppConstants.borderRadius),
                                            ),
                                          ))),
                                  const SizedBox(width: 28)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                    // Positioned( right: 0,top: 5, child: CheckboxExample( dateTime: DateTime.now(),)),
                  ],
                ),
              ),
      ],
    ));
  }

  void _showAddEventDialog(DateTime date) {
   Get.defaultDialog(
            backgroundColor: Colors.transparent,
            titlePadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            title: "",
            // title:"Add 2 Hr Time Block",
            // titleStyle: medium.copyWith(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black) ,
            content: Column(
              children: [
                CheckboxExample(
                  dateTime: date,
                ),
              ],
            ));

  }
}

class CheckboxExample extends StatefulWidget {
  DateTime? dateTime;
  CheckboxExample({required this.dateTime});
  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool checkbox1Value = true;
  bool checkbox2Value = false;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  RxString pickedDate = "Choose Date".obs;
  RxBool isDatePicked = false.obs;
  RxString pickedTime = "Choose Time".obs;
  RxBool isTimePicked = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            // width: MediaQuery.of(context).size.width*0.22,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Add 2 Hr Time Block",
                    style: medium.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: checkbox1Value == true
                                ? Colors.purple
                                : AppColors.kBGGreyColor),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              checkColor: AppColors.kPrimary,
                              activeColor: AppColors.kWhite,
                              value: checkbox1Value,
                              onChanged: (newValue) {
                                setState(() {
                                  checkbox1Value = newValue!;
                                  if (checkbox1Value == true) {
                                    checkbox2Value = false;
                                  } else {
                                    checkbox2Value = true;
                                  }
                                });
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text("at saloon",
                                  style: mediumText.copyWith(
                                      color: checkbox1Value == true
                                          ? AppColors.kWhite
                                          : Colors.black)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                            color: checkbox2Value == true
                                ? Colors.purple
                                : AppColors.kBGGreyColor),
                        child:
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              checkColor: AppColors.kPrimary,
                              activeColor: AppColors.kWhite,
                              value: checkbox2Value,
                              onChanged: (newValue) {
                                setState(() {
                                  checkbox2Value = newValue!;
                                  if (checkbox2Value == true) {
                                    checkbox1Value = false;
                                  } else {
                                    checkbox1Value = true;
                                  }
                                });
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "onsite  ",
                                style: mediumText.copyWith(
                                    color: checkbox2Value == true
                                        ? AppColors.kWhite
                                        : Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/images/profile.svg",
                          height: 30,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Style by Genie"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.calendar_month_sharp,
                          color: Colors.black,
                          size: 32,
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Container(
                            // height: AppSizes.screenHeight * 0.08,
                            // width: AppSizes.screenWidth/1.5,
                            // margin:const EdgeInsets.only(top:12),
                            decoration: const BoxDecoration(
                              color: AppColors.kBGGreyColor,
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0xffDDDDDD),
                              //     blurRadius: 6.0,
                              //     spreadRadius: 2.0,
                              //     offset: Offset(0.0, 0.0),
                              //   )
                              // ],
                            ),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                // pickedDate.value,
                                "${widget.dateTime!.day}/${widget.dateTime!.month}/${widget.dateTime!.year}",
                                style: medium.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.access_time_filled_rounded,
                          color: Colors.black,
                          size: 32,
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: InkWell(
                            onTap: () => _selectTime(context),
                            child: Container(
                              // height: AppSizes.screenHeight * 0.08,
                              // width: AppSizes.screenWidth/1.5,
                              // margin:const EdgeInsets.only(top:12),
                              decoration: const BoxDecoration(
                                color: AppColors.kBGGreyColor,
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Color(0xffDDDDDD),
                                //     blurRadius: 6.0,
                                //     spreadRadius: 2.0,
                                //     offset: Offset(0.0, 0.0),
                                //   )
                                // ],
                              ),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  pickedTime.value,
                                  style: medium.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20),
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: AppColors.kPrimary,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Add",
                          style: mediumText.copyWith(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
          ),
          const Positioned(
              top: 0,
              right: 0,
              child: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2101),
  //   );
  //
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //       pickedDate.value = DateFormat('yyyy-MM-dd').format(selectedDate); // Format the date
  //     });
  //   }
  //   else{
  //     pickedDate.value = DateFormat('yyyy-MM-dd').format(selectedDate); // Format the date
  //
  //   }
  // }
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      print("==========================");

      selectedTime = picked;
      pickedTime.value = selectedTime.format(context);
    } else {
      pickedTime.value = selectedTime.format(context);
    }
  }
}
