import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/helper/routes.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_constants.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeServiceScreen extends StatefulWidget {
  const HomeServiceScreen({Key? key}) : super(key: key);

  @override
  State<HomeServiceScreen> createState() => _HomeServiceScreenState();
}

class _HomeServiceScreenState extends State<HomeServiceScreen> {
  List<String> packages=["Premium","Standard","Daily","Weekly"];
  List<String>  time=["1 hr or less wait","4 hr or less wait","24 Hrs or less wait","1-7 Days Wait"];
  List<String> price=["100","65","50","35"];
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    RxInt selectedIndex = 0.obs;
    return
        // Scaffold(
        BaseScaffold(
            title: "Book Now",
            isArrowBack: true,
            body:
               Center(
                child: SizedBox(
                  width: AppSizes.screenWidth * 0.8,
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: AppSizes.screenHeight * 0.1,
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
                            "Choose your Services",
                            style: medium.copyWith(
                                color: Colors.black, fontSize: 24),
                          )),
                        ),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Row(
                          children: [
                            Icon(
                              Icons.home,
                              size: 50,
                            ),
                            Text(
                              "At Home Rates",
                              style: medium.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ), SizedBox(height: 6,),
                        const Text("All Rates include up to 2 hrs of services"),
                        SizedBox(height: AppSizes.appVerticalSm,),
                        Expanded(
                          child: ListView.builder(
                              itemCount: packages.length,
                              itemBuilder: (context, index) {
                                return Obx(()=>
                                   Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: true
                                        ? GestureDetector(
                                      onTap: (){


                                          selectedIndex.value=index;

                                        print("============ SelectedIndex ${selectedIndex.value==index}");
                                      },
                                          child: Container(
                                      padding: EdgeInsets.all(AppSizes.appVerticalSm),
                                      decoration: BoxDecoration(
                                            color: AppColors.kWhite,
                                          border: Border.all(color:selectedIndex.value==index? Colors.black:Colors.white),
                                          borderRadius: BorderRadius.circular(AppConstants.borderRadius)
                                      ),
                                            child:
                                            Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(packages[index],style: medium.copyWith(fontSize:index==0?38:20,color: Colors.black ,fontWeight: FontWeight.normal),),
                                                      Text(time[index],style: medium.copyWith(fontSize:14,color: Colors.black  ,fontWeight: FontWeight.normal))
                                                    ],
                                                  ),Spacer(),
                                                  Text("\$${price[index]}",style:medium.copyWith(fontSize:index==0? 38:20 ,color: Colors.black,fontWeight: FontWeight.normal) ,)
                                                ],
                                              ),
                                          ),
                                        )
                                        : ListTile(
                                            tileColor: AppColors.kWhite,
                                            selectedColor: Colors.red,
                                            title: Text("data"),
                                            subtitle: Text("1 hr or less wait"),
                                            trailing: Text(
                                              "\$100",
                                              style: medium.copyWith(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 24),
                                            ),
                                          ),
                                  ),
                                );
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextFormField(
                                  cursorColor: AppColors.kPrimary,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Card ending in XX7772",
                                      filled: true,
                                      fillColor: Color(0xffDDDDDD)),
                                ),
                              )),
                              SvgPicture.asset(
                                "assets/images/visa_card.svg",
                                height: 50,
                              )
                            ],
                          ),
                        ),
                        AppButton(
                            btnText: "Confirm & Pay!",
                            btnWidth: AppSizes.screenWidth / 2,
                            fun: () {
                              Get.toNamed(RouteHelper.profile);
                            }),
                        SizedBox(
                          height: AppSizes.appVerticalXs,
                        )
                      ]),
                ),
              ));
  }
}
