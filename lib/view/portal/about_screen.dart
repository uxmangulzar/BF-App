import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/app_size.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:beauty_booking_app/util/images.dart';
import 'package:beauty_booking_app/util/responsive.dart';
import 'package:beauty_booking_app/view/portal/portalScaffold.dart';
import 'package:beauty_booking_app/view/portal/portal_Login_screen.dart';
import 'package:beauty_booking_app/view/portal/stylistPortal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AboutStylePortal extends StatefulWidget {
  const AboutStylePortal({Key? key}) : super(key: key);

  @override
  State<AboutStylePortal> createState() => _AboutStylePortalState();
}

class _AboutStylePortalState extends State<AboutStylePortal> {
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return PortalScaffold(
      body: Responsive(
              desktop: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Text(MediaQuery.of(context).size.width.toString()),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                   Text(
                                    "Offer your Services On-Demand and Earn Big \$\$",
                                    style: webTitleHeading.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                const  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "Now looking for licensed stylists who perform styling services:\nStraigtening, Curling, Braiding or Up/do",
                                    style: webTitleHeading.copyWith(
                                      fontSize: 28,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: AppSizes.appHorizontalSm,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "Apply today and start earning as\nearly as tomorrow!",
                                          style: webTitleHeading.copyWith(
                                              fontWeight: FontWeight.normal)),
                                    if(MediaQuery.of(context).size.width>

                                        1200)  SizedBox(
                                        width: AppSizes.appVerticalXXL,
                                      ),
                                      PortalButton(
                                        btnText: "Apply Now!",
                                        fun: (){Get.to(()=>StylistPortal());},
                                        widget: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Apply Now!",
                                            style: webTitleHeading.copyWith(
                                                color: Colors.white),
                                          ),

                                        ),
                                        fontSize: 32,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppSizes.appHorizontalSm,
                                  ),
                                   Text(
                                    "How It Works",
                                    style: webTitleHeading.copyWith(fontWeight: FontWeight.bold),
                                  ),

                                  if (MediaQuery.of(context).size.width > 1300)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          PortalButton(
                                            widget: Padding(
                                              padding: const EdgeInsets.only(
                                                   bottom: 8.0, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "Apply ",
                                                    style: webTitleHeading.copyWith(
                                                        color: Colors.white),
                                                  ),
                                                  const SizedBox(
                                                    height: 24,
                                                  ),
                                                  Text(
                                                      "Upload license and ID.\nComplete profile.\n",
                                                      style: webSmallTxt.copyWith(fontSize: 14,color: Colors.white))
                                                ],
                                              ),
                                            ),
                                            fontSize: 32,
                                            borderRadius: 10,
                                          ),
                                          // SizedBox(
                                          //   width: AppSizes.appHorizontalSm,
                                          // ),
                                          PortalButton(
                                            widget: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, bottom: 8.0, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 6,
                                                  ),

                                                  Text(
                                                    "Set your Schedule ",
                                                    style: webTitleHeading.copyWith(
                                                        color: Colors.white),
                                                  ),
                                                 const SizedBox(
                                                    height: 24,
                                                  ),
                                                  Text(
                                                      "Add your availability and finish your\nstylist profile\n",
                                                      style: webSmallTxt.copyWith(
                                                          color: Colors.white,
                                                          fontSize: 14))
                                                ],
                                              ),
                                            ),
                                            fontSize: 32,
                                            borderRadius: 10,
                                          ),
                                          // SizedBox(
                                          //   width: AppSizes.appHorizontalSm,
                                          // ),
                                          PortalButton(
                                            widget: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, bottom: 8.0, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "Start making \$\$ ",
                                                    style: webTitleHeading.copyWith(
                                                        color: Colors.white),
                                                  ),
                                                  const SizedBox(
                                                    height: 24,
                                                  ),
                                                  Text(
                                                      "Login to view / manage\nappointments and view transaction\nhistory",
                                                      style: webSmallTxt.copyWith(
                                                          color: Colors.white,
                                                          fontSize: 14))
                                                ],
                                              ),
                                            ),
                                            fontSize: 32,
                                            borderRadius: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (MediaQuery.of(context).size.width < 1300)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            PortalButton(
                                              widget: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0,
                                                    bottom: 8.0,
                                                    right: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      "Apply ",
                                                      style: webTitleHeading
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 24,
                                                    ),
                                                    Text(
                                                        "Upload license and ID.\nComplete profile.\n",
                                                        style:
                                                            xSmallText.copyWith(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 16))
                                                  ],
                                                ),
                                              ),
                                              fontSize: 32,
                                              borderRadius: 10,
                                            ),
                                            SizedBox(
                                              width: AppSizes.appHorizontalSm,
                                            ),
                                            PortalButton(
                                              widget: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0,
                                                    bottom: 8.0,
                                                    right: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                      height: 6,
                                                    ),
                                                    Text(
                                                      "Set your Schedule ",
                                                      style: webTitleHeading
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 24,
                                                    ),
                                                    Text(
                                                        "Add your availability and finish \nyour stylist profile\n",
                                                        style:
                                                            xSmallText.copyWith(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 16))
                                                  ],
                                                ),
                                              ),
                                              fontSize: 32,
                                              borderRadius: 10,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: AppSizes.appHorizontalSm,
                                        ),
                                        SizedBox(
                                          width: AppSizes.screenWidth * 0.19,
                                          child: PortalButton(
                                            widget: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0,
                                                  bottom: 8.0,
                                                  right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "Start making \$\$ ",
                                                    style:
                                                        webTitleHeading.copyWith(
                                                            color: Colors.white),
                                                  ),
                                                  const SizedBox(
                                                    height: 24,
                                                  ),
                                                  Text(
                                                      "Login to view / manage appointments and view transaction history",
                                                      style: xSmallText.copyWith(
                                                          color: Colors.white,
                                                          fontSize: 16))
                                                ],
                                              ),
                                            ),
                                            fontSize: 32,
                                            borderRadius: 10,
                                          ),
                                        ),
                                      ],
                                    )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0),
                            child: SizedBox(
                                height: AppSizes.screenHeight * 0.75,
                                width: AppSizes.screenWidth * 0.25,
                                // decoration:BoxDecoration(image:DecorationImage(image:AssetImage("assets/web/image-removebg-preview.png"))),
                                // color: Colors.red,
                                child:
                              Image.asset("assets/dashboard/Copy of BF - Stylist Portal.png")
                                    // SvgPicture.asset("assets/web/image-removebg-preview.svg")
                            ),
                          )
                          // Image.asset("assets/dashboard/image-removebg-preview.png"))
                          // Image.file("assets/dashboard/chatlogo.png")
                        ],
                      ),
                    const  Text(
                        "Copyright 2023 BF. - Terms of Service - Privacy Policy",
                        style: smallText,
                      ),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),

                    ],
                  ),
                ),
              ),

              ///tablet
              tablet:
              SingleChildScrollView(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: AppSizes.appHorizontalSm,
                                ),
                                 Text(
                                  "Offer your Services On-Demand and Earn Big \$\$",
                                  style: webTitleHeading.copyWith(  fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Now looking for licensed stylists who perform styling services:\n Straigtening, Curling, Braiding or Up/do",
                                  style: webTitleHeading.copyWith(
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  height: AppSizes.appHorizontalSm,
                                ),
                                Text(
                                    "Apply today and start earning as\nearly as tomorrow!",
                                    style: webTitleHeading.copyWith(
                                        fontWeight: FontWeight.normal)),
                                SizedBox(
                                  height: AppSizes.appHorizontalSm,
                                ),
                                SizedBox(
                                  width:250,
                                  child: PortalButton(
                                    btnText: "Apply Now!",
                                    widget: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Apply Now!",
                                        style: webTitleHeading.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                    fontSize: 32,
                                  ),
                                ),
                                SizedBox(
                                  height: AppSizes.appHorizontalSm,
                                ),
                                const Text(
                                  "How It Works",
                                  style: webTitleHeading,
                                ),
                                SizedBox(
                                  height: AppSizes.appHorizontalSm,
                                ),
                                if (MediaQuery.of(context).size.width < 1300)
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          if(MediaQuery.of(context).size.width>835)   PortalButton(
                                            widget: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0,
                                                  bottom: 8.0,
                                                  right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "Apply ",
                                                    style: webTitleHeading
                                                        .copyWith(
                                                        color:
                                                        Colors.white),
                                                  ),
                                                  SizedBox(
                                                    height: 24,
                                                  ),
                                                  Text(
                                                      "Upload license and ID.\nComplete profile.\n",
                                                      style:
                                                      xSmallText.copyWith(
                                                          color:
                                                          Colors.white,
                                                          fontSize: 16))
                                                ],
                                              ),
                                            ),
                                            fontSize: 32,
                                            borderRadius: 10,
                                          ),
                                          SizedBox(
                                            width: AppSizes.appHorizontalSm,
                                          ),
                                        if(MediaQuery.of(context).size.width>835)  PortalButton(
                                            widget: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0,
                                                  bottom: 8.0,
                                                  right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "Set your Schedule ",
                                                    style: webTitleHeading
                                                        .copyWith(
                                                        color:
                                                        Colors.white),
                                                  ),
                                                  SizedBox(
                                                    height: 24,
                                                  ),
                                                  Text(
                                                      "Add your availability and finish \nyour stylist profile\n",
                                                      style:
                                                      xSmallText.copyWith(
                                                          color:
                                                          Colors.white,
                                                          fontSize: 16))
                                                ],
                                              ),
                                            ),
                                            fontSize: 32,
                                            borderRadius: 10,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: AppSizes.appHorizontalSm,
                                      ),
                                      if(MediaQuery.of(context).size.width<835)   PortalButton(
                                        widget: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0,
                                              bottom: 8.0,
                                              right: 8),
                                          child: Align(
                                            alignment:Alignment.topLeft,
                                            child: Column( crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Text(
                                                  "Apply ",
                                                  style: webTitleHeading
                                                      .copyWith(
                                                      color:
                                                      Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 24,
                                                ),
                                                Text(
                                                    "Upload license and ID.Complete profile.",
                                                    style:
                                                    xSmallText.copyWith(
                                                        color:
                                                        Colors.white,
                                                        fontSize: 16))
                                              ],
                                            ),
                                          ),
                                        ),
                                        fontSize: 32,
                                        borderRadius: 10,
                                      ),

                                      SizedBox(
                                        height: AppSizes.appHorizontalSm,
                                      ),
                                      if(MediaQuery.of(context).size.width<835)
                                        PortalButton(
                                        widget: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0,
                                              bottom: 8.0,
                                              right: 8),
                                          child: Align(
                                            alignment:Alignment.topLeft,
                                            child: Column( crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Text(
                                                  "Set your Schedule ",
                                                  style: webTitleHeading
                                                      .copyWith(
                                                      color:
                                                      Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 24,
                                                ),
                                                Text(
                                                    "Add your availability and finish your stylist profile",
                                                    style:
                                                    xSmallText.copyWith(
                                                        color:
                                                        Colors.white,
                                                        fontSize: 16))
                                              ],
                                            ),
                                          ),
                                        ),
                                        fontSize: 32,
                                        borderRadius: 10,
                                      ),
                                      SizedBox(
                                        height: AppSizes.appHorizontalSm,
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width<850? AppSizes.screenWidth :250,
                                        child: PortalButton(
                                          widget: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0,
                                                bottom: 8.0,
                                                right: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Text(
                                                  "Start making \$\$ ",
                                                  style:
                                                  webTitleHeading.copyWith(
                                                      color: Colors.white),
                                                ),
                                                const SizedBox(
                                                  height: 24,
                                                ),
                                                Text(
                                                    "Login to view / manage appointments and view transaction history",
                                                    style: xSmallText.copyWith(
                                                        color: Colors.white,
                                                        fontSize: 16))
                                              ],
                                            ),
                                          ),
                                          fontSize: 32,
                                          borderRadius: 10,
                                        ),
                                      ),
                                    ],
                                  )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Image.asset("assets/dashboard/Copy of BF - Stylist Portal.png",fit: BoxFit.fill,),

                          )
                        ],
                      ),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                      Text(
                        "Copyright 2023 BF. - Terms of Service - Privacy Policy",
                        style: smallText,
                      ),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                    ],
                  ),
                ),
              ),
              mobile: SingleChildScrollView(

                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                       Text(
                        "Offer your Services On-Demand and Earn Big \$\$",
                        style: webTitleHeading.copyWith(  fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Now looking for licensed stylists who perform styling services:\n Straigtening, Curling, Braiding or Up/do",
                        style: webTitleHeading.copyWith(
                            fontWeight: FontWeight.normal),
                      ),
                      Container(
                          height: AppSizes.screenHeight*0.5,
                          width:AppSizes.screenWidth,
                          child:Image.asset("assets/dashboard/Copy of BF - Stylist Portal.png") ),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                      Text(
                          "Apply today and start earning as\nearly as tomorrow!",
                          style: webTitleHeading.copyWith(
                              fontWeight: FontWeight.normal)),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                      SizedBox(
                        width:250,
                        child: PortalButton(
                          btnText: "Apply Now!",
                          widget: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Apply Now!",
                              style: webTitleHeading.copyWith(
                                  color: Colors.white),
                            ),
                          ),
                          fontSize: 32,
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                      const Text(
                        "How It Works",
                        style: webTitleHeading,
                      ),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                      if (MediaQuery.of(context).size.width < 1300)
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if(MediaQuery.of(context).size.width>835)   PortalButton(
                                  widget: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 8.0,
                                        right: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          "Apply ",
                                          style: webTitleHeading
                                              .copyWith(
                                              color:
                                              Colors.white),
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Text(
                                            "Upload license and ID.\nComplete profile.\n",
                                            style:
                                            xSmallText.copyWith(
                                                color:
                                                Colors.white,
                                                fontSize: 16))
                                      ],
                                    ),
                                  ),
                                  fontSize: 32,
                                  borderRadius: 10,
                                ),
                                SizedBox(
                                  width: AppSizes.appHorizontalSm,
                                ),
                                if(MediaQuery.of(context).size.width>835)  PortalButton(
                                  widget: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 8.0,
                                        right: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          "Set your Schedule ",
                                          style: webTitleHeading
                                              .copyWith(
                                              color:
                                              Colors.white),
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Text(
                                            "Add your availability and finish \nyour stylist profile\n",
                                            style:
                                            xSmallText.copyWith(
                                                color:
                                                Colors.white,
                                                fontSize: 16))
                                      ],
                                    ),
                                  ),
                                  fontSize: 32,
                                  borderRadius: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AppSizes.appHorizontalSm,
                            ),
                            if(MediaQuery.of(context).size.width<835)   PortalButton(
                              widget: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    right: 8),
                                child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Column( crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        "Apply ",
                                        style: webTitleHeading
                                            .copyWith(
                                            color:
                                            Colors.white),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      Text(
                                          "Upload license and ID.Complete profile.",
                                          style:
                                          xSmallText.copyWith(
                                              color:
                                              Colors.white,
                                              fontSize: 16))
                                    ],
                                  ),
                                ),
                              ),
                              fontSize: 32,
                              borderRadius: 10,
                            ),

                            SizedBox(
                              height: AppSizes.appHorizontalSm,
                            ),
                            if(MediaQuery.of(context).size.width<835)
                              PortalButton(
                                widget: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0,
                                      bottom: 8.0,
                                      right: 8),
                                  child: Align(
                                    alignment:Alignment.topLeft,
                                    child: Column( crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          "Set your Schedule ",
                                          style: webTitleHeading
                                              .copyWith(
                                              color:
                                              Colors.white),
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Text(
                                            "Add your availability and finish your stylist profile",
                                            style:
                                            xSmallText.copyWith(
                                                color:
                                                Colors.white,
                                                fontSize: 16))
                                      ],
                                    ),
                                  ),
                                ),
                                fontSize: 32,
                                borderRadius: 10,
                              ),
                            SizedBox(
                              height: AppSizes.appHorizontalSm,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width<850? AppSizes.screenWidth :250,
                              child: PortalButton(
                                widget: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0,
                                      bottom: 8.0,
                                      right: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        "Start making \$\$ ",
                                        style:
                                        webTitleHeading.copyWith(
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Text(
                                          "Login to view / manage appointments and view transaction history",
                                          style: xSmallText.copyWith(
                                              color: Colors.white,
                                              fontSize: 16))
                                    ],
                                  ),
                                ),
                                fontSize: 32,
                                borderRadius: 10,
                              ),
                            ),
                          ],
                        ),

                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                      Text(
                        "Copyright 2023 BF. - Terms of Service - Privacy Policy",
                        style: smallText,
                      ),
                      SizedBox(
                        height: AppSizes.appHorizontalSm,
                      ),
                      // Container(
                      //   height:400,
                      //   width:200,
                      //   child: Image.asset("assets/dashboard/image.jpeg",fit: BoxFit.fill,),
                      // )
                    ],
                  ),
                ),
              )
            ),

      action:
      Responsive(
              desktop:
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Stylist Portal",
                      style: titleHeading.copyWith(fontSize: 36),
                    ),
                    SizedBox(
                      height: AppSizes.appVerticalSm,
                    ),
                    Row(

                      children: [
                        PortalButton(
                          btnWidth: 150,
                          btnText: "Apply",
                          fun: () {
                            Get.to(()=>StylistPortal());
                          },
                        ),
                        SizedBox(
                          width: AppSizes.appVerticalSm,
                        ),
                        PortalButton(
                          btnWidth: 150,
                          btnText: "LogIn",
                          fun: () {
                            Get.to(()=>PortalLogin());
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              tablet: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Stylist Portal",
                    style: titleHeading,
                  ),
                  SizedBox(
                    height: AppSizes.appVerticalSm,
                  ),
                  Row(
                    children: [
                      PortalButton(
                        btnText: "Apply",
                        fun: () { Get.to(()=>StylistPortal());},
                      ),
                      SizedBox(
                        width: AppSizes.appVerticalSm,
                      ),
                      PortalButton(
                        btnText: "LogIn",
                        fun: () {
                          Get.to(()=>PortalLogin());
                        },
                      ),
                    ],
                  )
                ],
              ),
              mobile: SizedBox())

    );
  }
}
