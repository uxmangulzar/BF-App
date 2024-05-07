import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/commonWidget/webSideBar.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/util/web_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return WebBaseScaffold(
        body:
        true?Responsive(desktop: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WebSideBar(context),
            Expanded(
              child: Padding(
              padding:  const EdgeInsets.only(left: 16.0,right:16),
                child: SingleChildScrollView(
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(MediaQuery.of(context).size.width.toString()),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/profile.svg",
                                height: 40,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("View Stylist Application: Ashley Smith"  ,style: medium.copyWith(fontWeight: FontWeight.normal, color: Colors.black,fontSize: MediaQuery.of(context).size.width<900? 20:40 )),
                              if(MediaQuery.of(context).size.width>900)    Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffffeeaa)), child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Status: Pending Approval",style: TextStyle(fontWeight: FontWeight.bold),),
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                      if(MediaQuery.of(context).size.width<900)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffffeeaa)), child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Status: Pending Approval",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),),
                        ),
                      SizedBox(height:AppSizes.appVerticalSm),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [firstColumn(),  secondColumn(),if(MediaQuery.of(context).size.width>900)thirdColumn()],),


                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(children: [

                          Container(
                            width: 100,
                            padding:const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: AppColors.kRedColor,borderRadius: BorderRadius.circular(8)), child:const Center(child: Text("Deny",style: TextStyle(color:Colors.white),)),),
                          SizedBox(
                            width: AppSizes.appVerticalXL,
                          ) ,
                          Container(
                            width: 100,
                            padding:const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(8)), child:const Center(child: Text("Approve",style: TextStyle(color:Colors.white),)),),   ],),
                      ),
                      SizedBox(height: AppSizes.appVerticalSm,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,),
                        child: SizedBox(width: 200,child: AppTextField(
                          isMaxLines: true,
                          controller: TextEditingController(),hintTxt: "Denial Reason",),),
                      )


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
          tablet:
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WebSideBar(context),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(MediaQuery.of(context).size.width.toString()),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/profile.svg",
                              height: 40,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text("View Stylist Application: Ashley Smith"  ,style: medium.copyWith(fontWeight: FontWeight.normal,color: Colors.black,fontSize: MediaQuery.of(context).size.width<670? 24:30 )),
                            //  Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffffeeaa)), child: const Padding(
                            //     padding: EdgeInsets.all(8.0),
                            //     child: Text("Status: Pending Approval",style: TextStyle(fontWeight: FontWeight.bold),),
                            //   ),),
                            // )
                          ],
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffffeeaa)), child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Status: Pending Approval",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),),
                        ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [firstColumn(),if(MediaQuery.of(context).size.width>720)  secondColumn(),],),
                      ),
                      if(MediaQuery.of(context).size.width<720)  secondColumn(),
                      Padding(
                        padding: const EdgeInsets.only(left:16),
                        child: thirdColumn(),
                      ),
                      SizedBox(height: AppSizes.appVerticalSm,),
                      Padding(
                        padding: const EdgeInsets.only(left:16),
                        child: Row(children: [
                          Container(
                            width: 100,
                            padding:const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: AppColors.kRedColor,borderRadius: BorderRadius.circular(8)), child:const Center(child: Text("Deny",style: TextStyle(color:Colors.white),)),),
                          SizedBox(
                            width: AppSizes.appVerticalXL,
                          ) ,
                          Container(
                            width: 100,
                            padding:const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(8)), child:const Center(child: Text("Approve",style: TextStyle(color:Colors.white),)),),   ],),
                      ),
                      SizedBox(height: AppSizes.appVerticalSm,),
                      Padding(
                        padding: const EdgeInsets.only(left:16),
                        child: SizedBox(width: 200,child: AppTextField(
                          isMaxLines: true,
                          controller: TextEditingController(),hintTxt: "Denial Reason",),),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ],
        ), mobile:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/profile.svg",
                                height: 40,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("View Stylist Application: Ashley Smith"  ,style: medium.copyWith(fontWeight: FontWeight.normal,color: Colors.black,fontSize: MediaQuery.of(context).size.width<670? 20:30 )),
                              //  Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffffeeaa)), child: const Padding(
                              //     padding: EdgeInsets.all(8.0),
                              //     child: Text("Status: Pending Approval",style: TextStyle(fontWeight: FontWeight.bold),),
                              //   ),),
                              // )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffffeeaa)), child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Status: Pending Approval",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),),
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        // SingleChildScrollView(
                        //   scrollDirection: Axis.horizontal,
                        //   child: Row(
                        //     mainAxisSize: MainAxisSize.max,
                        //     children: [firstColumn(), if(MediaQuery.of(context).size.width>650) secondColumn(),],),
                        // ),
                        // if(MediaQuery.of(context).size.width<650)  secondColumn(),
                        firstColumn(),
                        secondColumn(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: thirdColumn(),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Container(
                              width: 100,
                              padding:const EdgeInsets.all(8),
                              decoration: BoxDecoration(color: AppColors.kRedColor,borderRadius: BorderRadius.circular(8)), child:const Center(child: Text("Deny",style: TextStyle(color:Colors.white),)),),
                            SizedBox(
                              width: AppSizes.appVerticalXL,
                            ) ,
                            Container(
                              width: 100,
                              padding:const EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(8)), child:const Center(child: Text("Approve",style: TextStyle(color:Colors.white),)),),   ],),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(width: 240,child: AppTextField(
                            isMaxLines: true,
                            controller: TextEditingController(),hintTxt: "Denial Reason",),),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),):

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WebSideBar(context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(MediaQuery.of(context).size.width.toString()),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/profile.svg",
                            height: 40,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text("View Stylist Application: Ashley Smith"  ,style: medium.copyWith(color: Colors.black,fontSize: MediaQuery.of(context).size.width<900? 20:40 )),
                          if(MediaQuery.of(context).size.width>900)    Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffffeeaa)), child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Status: Pending Approval",style: TextStyle(fontWeight: FontWeight.bold),),
                            ),),
                          )
                        ],
                      ),
                    ),
                    if(MediaQuery.of(context).size.width<900)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffffeeaa)), child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Status: Pending Approval",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),),
                      ),
                      SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [firstColumn(),  secondColumn(),if(MediaQuery.of(context).size.width>900)thirdColumn()],),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

Widget firstColumn() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "First Name",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("Ashley")
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Last Name",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("Ashley")
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Bussiness Name",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("Ashley")
        ]),
      ),

      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Email Address",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("Ashley@gmail.com")
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Phone",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("Ashley")
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Social Media/Website",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("Ashley")
        ]),
      ),

      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Check all that apply",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child:Icon(Icons.done)
          ),
          Text("I'm willing to travel to clients")
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child:Icon(Icons.done)
          ),
          Text("Clients will come to me")
        ]),
      ),


    ],
  );
}
Widget secondColumn() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(

            scrollDirection: Axis.horizontal,
            child: Text(
              "My Street Address (including Apt/Unit) 1234 Main St",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ]),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "City",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "State",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ), Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Zip",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Phoenix ",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "AZ",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ), Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "85004",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ]),
      ),


      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Paypal Email",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("ashleyspaypal@example.com")
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Reference 1 Name",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("Megan Thomas")
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Reference 1 Phone Number",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("480-555-1212")
        ]),
      ),

      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Reference 2 Name",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("Molly McDonald")
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Reference 2 Phone Number",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Text("480-555-1212")
        ]),
      ),




    ],
  );
}
Widget thirdColumn(){
  return
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
   const Text("State License"),
    SizedBox(height:AppSizes.appVerticalSm),
    SizedBox(
      height: 120,
      width:240,
      child: Image.asset("assets/images/state_licence.png",fit: BoxFit.fill,),
    ),
        SizedBox(height:AppSizes.appVerticalSm),

        const Text("Id Card"),
        SizedBox(height:AppSizes.appVerticalSm),

        SizedBox(
        height: 120,
        width:240,
        child: Image.asset("assets/images/image.png",fit: BoxFit.fill)),
  ],);
}
