import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/view/admin/customer_appointmentScreen.dart';
import 'package:beauty_booking_app/view/admin/edit_customer_profile.dart';
import 'package:beauty_booking_app/view/admin/edit_stylist_profile.dart';
import 'package:beauty_booking_app/view/admin/stylist_availabilty.dart';
// import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//PaginatedDataTableExample

class PaginatedDataTableExample extends StatefulWidget {
// final Widget? widget;
  // const PaginatedDataTableExample({Key? key,required this.widget}) : super(key: key);
  @override
  _PaginatedDataTableExampleState createState() =>
      _PaginatedDataTableExampleState();
}

class _PaginatedDataTableExampleState extends State<PaginatedDataTableExample> {
  int currentPage = 0;
  List<List<String>> data = List.generate(
      100,
      (index) => [
            'Contact ${index + 1}',
            'Stylist ${index + 1}',
            'Services ${index + 1}',
            'Level ${index + 1}',
            'Billed ${index + 1}',
            'Payout ${index + 1}',
            'Date ${index + 1}',
            'Status ${index + 1}',
          ]);

  void goToPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              // dataRowMinHeight: 16,
              dataRowHeight: 60,
              headingRowColor:
                  MaterialStateProperty.all(AppColors.kBGGreyColor),
              headingTextStyle:
                  mediumD.copyWith(fontWeight: FontWeight.bold, fontSize: 21),
              columns: const [
                DataColumn(label: Text('Contact')),
                DataColumn(label: Text('Stylist')),
                DataColumn(label: Text('Services')),
                DataColumn(label: Text('Level')),
                DataColumn(label: Text('Billed')),
                DataColumn(label: Text('Payout')),
                DataColumn(
                    label: Flexible(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text('Date/Time')))),
                DataColumn(label: Text('Status')),
              ],
              rows: data
                  .sublist(currentPage * 3, (currentPage + 1) * 3)
                  .map(
                    (rowData) => DataRow(cells: [
                      const
                      DataCell(Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(height: 6,),
                            Row(
                              children: [
                                Expanded(

                                  child: SingleChildScrollView(
                                    scrollDirection:Axis.horizontal,

                                    child: Text("Ashley Smith",style: webMediumTxt,),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:2),
                            Flexible(child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [Icon(Icons.phone_android_sharp,size: 10,),Text("(480) 555-1212")],)))
                          ],
                        ),
                      )),
                       DataCell(Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(height: 6,),
                            Row(
                              children: [
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection:Axis.horizontal,
                                    child: Text("Style By Genie",style: webMediumTxt.copyWith(fontSize: 20),),
                                  ),
                                ),
                              ],
                            ),
                           const SizedBox(height:2),
                            Flexible(child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [Icon(Icons.phone_android_sharp,size: 10,),Text("(480) 555-1212")],)))
                          ],
                        ),
                      )),
                      DataCell(Text("Braiding",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(Text("Premium\n(Onsite)",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(Text("\$100",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(Text("\$90",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(Text("Today 1 PM",style:webMediumTxt.copyWith(fontSize: 23) ,)),
                      DataCell(Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.kRedColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              "Issue Payout",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                    ]),
                  )
                  .toList(),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed:
                  currentPage > 0 ? () => goToPage(currentPage - 1) : null,
              child: Text(
                'Previous',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: currentPage > 0
                        ? Colors.black
                        : AppColors.kBGGreyColor),
              ),
            ),
            Text(
              "Page ${currentPage + 1} of ${data.length / 10} -",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextButton(
              onPressed: currentPage < data.length ~/ 10 - 1
                  ? () => goToPage(currentPage + 1)
                  : null,
              child: Text(
                'Next',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: currentPage < data.length ~/ 10 - 1
                        ? Colors.black
                        : AppColors.kBGGreyColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class PaginatedDataTableExample2 extends StatefulWidget {
// final Widget? widget;
  // const PaginatedDataTableExample2({Key? key,required this.widget}) : super(key: key);
  @override
  _PaginatedDataTableExample2State createState() =>
      _PaginatedDataTableExample2State();
}

class _PaginatedDataTableExample2State
    extends State<PaginatedDataTableExample2> {
  int currentPage = 0;
  List<List<String>> data = List.generate(
      100,
      (index) => [
            'Contact ${index + 1}',
            'Stylist ${index + 1}',
            'Services ${index + 1}',
            'Level ${index + 1}',
            'Billed ${index + 1}',
            'Payout ${index + 1}',
            'Date ${index + 1}',
            'Status ${index + 1}',
          ]);

  void goToPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              // dataRowMinHeight: 16,
              dataRowHeight: 60,
              headingRowColor:
                  MaterialStateProperty.all(AppColors.kBGGreyColor),
              headingTextStyle:
                  mediumD.copyWith(fontWeight: FontWeight.bold, fontSize: 21),
              columns: const [
                DataColumn(label: Text('Contact')),
                DataColumn(label: Text('Stylist')),
                DataColumn(label: Text('Services')),
                DataColumn(label: Text('Level')),
                DataColumn(label: Text('Billed')),
                DataColumn(label: Text('Payout')),
                DataColumn(label: Text('Date/Time')),
                DataColumn(
                    label: Flexible(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text('Stripe Transaction ID')))),
              ],
              rows: data
                  .sublist(currentPage * 3, (currentPage + 1) * 3)
                  .map(
                    (rowData) => DataRow(cells: [
                      DataCell(Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(height: 6,),
                            Row(
                              children: [
                                Expanded(

                                  child: SingleChildScrollView(
                                    scrollDirection:Axis.horizontal,

                                    child: Text("Ashley Smith",style: webMediumTxt,),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:2),
                            Flexible(child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [Icon(Icons.phone_android_sharp,size: 10,),Text("(480) 555-1212")],)))
                          ],
                        ),
                      )),
                      DataCell(Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(height: 6,),
                            Row(
                              children: [
                                Expanded(

                                  child: SingleChildScrollView(
                                    scrollDirection:Axis.horizontal,

                                    child: Text("Style By Genie",style: webMediumTxt.copyWith(fontSize: 20),),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:2),
                            Flexible(child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [Icon(Icons.phone_android_sharp,size: 10,),Text("(480) 555-1212")],)))
                          ],
                        ),
                      )),
                      DataCell(Text("Braiding",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(Text("Premium\n(Onsite)",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(Text("\$100",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(Text("\$90",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      // DataCell(Text("12/10/2023 5 PM",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(Text("12/10/2023 5 PM",style:webMediumTxt.copyWith(fontSize: 21) ,)),
                      DataCell(
                        Row(
                          children: [
                            Text("T3FEFAS3215143",style:webMediumTxt.copyWith(fontSize: 21) ,),
                            SizedBox(width:4),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: AppColors.kRedColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text(
                                "Refund",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )
                  .toList(),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed:
                  currentPage > 0 ? () => goToPage(currentPage - 1) : null,
              child: Text(
                'Previous',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: currentPage > 0
                        ? Colors.black
                        : AppColors.kBGGreyColor),
              ),
            ),
            Text(
              "Page ${currentPage + 1} of ${data.length / 10} -",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextButton(
              onPressed: currentPage < data.length ~/ 10 - 1
                  ? () => goToPage(currentPage + 1)
                  : null,
              child: Text(
                'Next',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: currentPage < data.length ~/ 10 - 1
                        ? Colors.black
                        : AppColors.kBGGreyColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class PaginatedDataTableExample3 extends StatefulWidget {
// final Widget? widget;
  // const PaginatedDataTableExample3({Key? key,required this.widget}) : super(key: key);
  @override
  _PaginatedDataTableExample3State createState() =>
      _PaginatedDataTableExample3State();
}

class _PaginatedDataTableExample3State
    extends State<PaginatedDataTableExample3> {
  int currentPage = 0;
  List<List<String>> data = List.generate(
      100,
      (index) => [
            'Salon by Genie',
            '(480) 555-1212',
            'email@example.com',
            'Active',
            'Action ${index + 1}',
          ]);

  void goToPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            horizontalMargin: 16,
            // dataRowMinHeight: 16,
            // dataRowMaxHeight: ,
            headingRowColor:
                MaterialStateProperty.all(AppColors.kBGGreyColor),
            headingTextStyle:
                mediumD.copyWith(fontWeight: FontWeight.bold, fontSize: 19),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Phone')),
              DataColumn(label: Text('Email')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Action')),
            ],
            rows: data
                .sublist(currentPage * 10, (currentPage + 1) * 10)
                .map(
                  (rowData) =>  DataRow(cells: [
                    DataCell(Text("Salon by Genie",style: webMediumTxt.copyWith(fontSize: 19),)),
                    const DataCell(
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [Icon(Icons.phone_android_sharp,size: 14,),Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("(480) 555-1212"),
                            )],))),
                    DataCell(Text('email@example.com',style: webMediumTxt.copyWith(fontSize: 18,decoration: TextDecoration.underline,),)),
                    DataCell(Text("Pending Approval",style: webMediumTxt.copyWith(fontSize: 18,),)),
                    DataCell(Row(
                      children: [
                        InkWell(
                          onTap:(){Get.to(()=>EditStylistProfile());},
                          child: Text(
                            "Edit",style: webMediumTxt.copyWith(fontSize: 15,decoration: TextDecoration.underline,),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        InkWell(
                          onTap:(){
                            Get.to(()=>CustomerAppointmentsScreen());
                          },
                          child: Text(
                            "Appointments",style: webMediumTxt.copyWith(fontSize: 15,decoration: TextDecoration.underline,),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        InkWell(
                          onTap:(){
                            Get.to(()=>StylistAvailability());
                          },
                          child: Text(
                            "Availability",style: webMediumTxt.copyWith(fontSize: 15,decoration: TextDecoration.underline,),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Delete",style: webMediumTxt.copyWith(fontSize: 15,decoration: TextDecoration.underline,),
                        ),
                      ],
                    )),
                  ]),
                )
                .toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed:
                  currentPage > 0 ? () => goToPage(currentPage - 1) : null,
              child: Text(
                'Previous',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: currentPage > 0
                        ? Colors.black
                        : AppColors.kBGGreyColor),
              ),
            ),
            Text(
              "Page ${currentPage + 1} of ${data.length / 10} -",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextButton(
              onPressed: currentPage < data.length ~/ 10 - 1
                  ? () => goToPage(currentPage + 1)
                  : null,
              child: Text(
                'Next',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: currentPage < data.length ~/ 10 - 1
                        ? Colors.black
                        : AppColors.kBGGreyColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}


class CustomerTable extends StatefulWidget {
// final Widget? widget;
  // const CustomerTable({Key? key,required this.widget}) : super(key: key);
  @override
  _CustomerTableState createState() =>
      _CustomerTableState();
}

class _CustomerTableState
    extends State<CustomerTable> {
  int currentPage = 0;
  List<List<String>> data = List.generate(
      100,
          (index) => [
        'Salon by Genie',
        '(480) 555-1212',
        'email@example.com',
        'Active',
        'Action ${index + 1}',
      ]);

  void goToPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            horizontalMargin: 16,
            // dataRowMinHeight: 16,
            // dataRowMaxHeight: ,
            headingRowColor:
            MaterialStateProperty.all(AppColors.kBGGreyColor),
            headingTextStyle:
            mediumD.copyWith(fontWeight: FontWeight.bold, fontSize: 19),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Phone')),
              DataColumn(label: Text('Email')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Action')),
            ],
            rows: data
                .sublist(currentPage * 10, (currentPage + 1) * 10)
                .map(
                  (rowData) =>  DataRow(cells: [
                DataCell(Text("Salon by Genie",style: webMediumTxt.copyWith(fontSize: 19),)),
                const DataCell(
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [Icon(Icons.phone_android_sharp,size: 14,),Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("(480) 555-1212"),
                        )],))),
                DataCell(Text('email@example.com',style: webMediumTxt.copyWith(fontSize: 18,decoration: TextDecoration.underline,),)),
                DataCell(Text("Pending Approval",style: webMediumTxt.copyWith(fontSize: 18,),)),
                DataCell(Row(
                  children: [
                    InkWell(
                      onTap:(){Get.to(()=>EditCustomerProfile());},
                      child: Text(
                        "EditProfile",style: webMediumTxt.copyWith(fontSize: 15,decoration: TextDecoration.underline,),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    InkWell(
                      onTap:(){
                        Get.to(()=>CustomerAppointmentsScreen());
                      },
                      child: Text(
                        "Appointments",style: webMediumTxt.copyWith(fontSize: 15,decoration: TextDecoration.underline,),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Delete",style: webMediumTxt.copyWith(fontSize: 15,decoration: TextDecoration.underline,),
                    ),
                  ],
                )),
              ]),
            )
                .toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed:
              currentPage > 0 ? () => goToPage(currentPage - 1) : null,
              child: Text(
                'Previous',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: currentPage > 0
                        ? Colors.black
                        : AppColors.kBGGreyColor),
              ),
            ),
            Text(
              "Page ${currentPage + 1} of ${data.length / 10} -",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextButton(
              onPressed: currentPage < data.length ~/ 10 - 1
                  ? () => goToPage(currentPage + 1)
                  : null,
              child: Text(
                'Next',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: currentPage < data.length ~/ 10 - 1
                        ? Colors.black
                        : AppColors.kBGGreyColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}


class PortalPaginatedDataTableExample extends StatefulWidget {
// final Widget? widget;
  // const PortalPaginatedDataTableExample({Key? key,required this.widget}) : super(key: key);
  @override
  _PortalPaginatedDataTableExampleState createState() =>
      _PortalPaginatedDataTableExampleState();
}

class _PortalPaginatedDataTableExampleState extends State<PortalPaginatedDataTableExample> {
  int currentPage = 0;
  List<List<String>> data = List.generate(
      100,
          (index) => [
        'Contact ${index + 1}',
        'Services ${index + 1}',
        'Payout ${index + 1}',
        'Date ${index + 1}',
        'Status ${index + 1}',
      ]);

  void goToPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0,top: 8),
      child: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // height: MediaQuery.of(context).size.height/2,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  // width:MediaQuery.of(context).size.width*0.75,
                  height: 200,
                  child: DataTable(
                    // dataRowMinHeight: 40,
                      dataRowHeight: 60.0,
                    headingRowColor:
                    MaterialStateProperty.all(AppColors.kBGGreyColor),
                    headingTextStyle:
                    mediumD.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                    columns: const [
                      DataColumn(label: Text('Contact')),

                      DataColumn(label: Text('Services')),

                      DataColumn(label: Text('Payout')),
                      DataColumn(
                          label: Flexible(
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text('Date/Time')))),
                      DataColumn(label: Text('Action')),
                    ],
                    rows: data
                        .sublist(currentPage * 3, (currentPage + 1) * 3)
                        .map(
                          (rowData) =>
                              DataRow(cells: [
                        DataCell(Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(height: 6,),
                        Row(
                        children: [
                        Expanded(

                        child: SingleChildScrollView(
                          scrollDirection:Axis.horizontal,

                          child: Text("Ashley Smith",style:  xSmallText.copyWith(
                              color:
                              Colors.black,
                              fontSize: 28),),
                        ),
                        ),
                              ],
                              ),
                            Flexible(child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [Icon(Icons.phone_android_sharp,size: 10,),Text("(480) 555-1212")],)))
                          ],
                        )),
                        DataCell(Text("Braiding")),
                        DataCell(Text("\$80")),

                        DataCell(Text("Today 1 PM")),
                        DataCell(Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: AppColors.kRedColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 100,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8)),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  "Issue Payout",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )),
                      ]),
                    )
                        .toList(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed:
                    currentPage > 0 ? () => goToPage(currentPage - 1) : null,
                    child: Text(
                      'Previous',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: currentPage > 0
                              ? Colors.black
                              : AppColors.kBGGreyColor),
                    ),
                  ),
                  Text(
                    "Page ${currentPage + 1} of ${data.length / 10} -",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: currentPage < data.length ~/ 10 - 1
                        ? () => goToPage(currentPage + 1)
                        : null,
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: currentPage < data.length ~/ 10 - 1
                              ? Colors.black
                              : AppColors.kBGGreyColor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class PortalPaginatedDataTableExample1 extends StatefulWidget {
// final Widget? widget;
  // const PortalPaginatedDataTableExample1({Key? key,required this.widget}) : super(key: key);
  @override
  _PortalPaginatedDataTableExample1State createState() =>
      _PortalPaginatedDataTableExample1State();
}

class _PortalPaginatedDataTableExample1State extends State<PortalPaginatedDataTableExample1> {
  int currentPage = 0;
  List<List<String>> data = List.generate(
      100,
          (index) => [
        'Contact ${index + 1}',
        'Services ${index + 1}',
        'Payout ${index + 1}',
        'Date ${index + 1}',
        'Status ${index + 1}',
      ]);

  void goToPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0,top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // height: MediaQuery.of(context).size.height/2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                // width:MediaQuery.of(context).size.width*0.75,
                height: 200,
                child: DataTable(
                  // dataRowMinHeight: 40,
                    dataRowHeight: 60.0,
                  headingRowColor:
                  MaterialStateProperty.all(AppColors.kBGGreyColor),
                  headingTextStyle:
                  mediumD.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                  columns: const [
                    DataColumn(label: Text('Contact')),

                    DataColumn(label: Text('Services')),

                    DataColumn(label: Text('Payout')),
                    DataColumn(
                        label: Flexible(
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text('Date/Time')))),
                    DataColumn(label: Flexible(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text('Payout Status')),
                    )),
                  ],
                  rows: data
                      .sublist(currentPage * 3, (currentPage + 1) * 3)
                      .map(
                        (rowData) =>
                        DataRow(cells: [
                          DataCell(
                              Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(height: 6,),
                              Row(
                                children: [
                                  Expanded(

                                    child: SingleChildScrollView(
                                      scrollDirection:Axis.horizontal,

                                      child: Text("Ashley Smith",style:  xSmallText.copyWith(
                                          color:
                                          Colors.black,
                                          fontSize: 28),),
                                    ),
                                  ),
                                ],
                              ),
                              Flexible(child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(children: [Icon(Icons.phone_android_sharp,size: 10,),Text("(480) 555-1212")],)))
                            ],
                          )),
                          DataCell(Text("Braiding")),
                          DataCell(Text("\$80")),

                          DataCell(Text("Today 1 PM")),
                          DataCell(Text("Paid")),
                        ]),
                  )
                      .toList(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed:
                  currentPage > 0 ? () => goToPage(currentPage - 1) : null,
                  child: Text(
                    'Previous',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: currentPage > 0
                            ? Colors.black
                            : AppColors.kBGGreyColor),
                  ),
                ),
                Text(
                  "Page ${currentPage + 1} of ${data.length / 10} -",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                TextButton(
                  onPressed: currentPage < data.length ~/ 10 - 1
                      ? () => goToPage(currentPage + 1)
                      : null,
                  child: Text(
                    'Next',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: currentPage < data.length ~/ 10 - 1
                            ? Colors.black
                            : AppColors.kBGGreyColor),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}