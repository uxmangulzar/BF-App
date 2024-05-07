import 'dart:io';

import 'package:beauty_booking_app/commonWidget/app_button.dart';
import 'package:beauty_booking_app/commonWidget/app_text_field.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final ImagePicker _picker = ImagePicker();
  File? _image;
  var imagePicker;

  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if(image == null) return;
      final imageTemp = File(image.path);
      setState(() => _image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width,
                color: Colors.black38,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          SizedBox(
                            child: _image == null
                                ? Container(
                                    height: 130,
                                    width: 130,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      // image: DecorationImage(
                                      //   image: AssetImage(
                                      //       "assets/images/comp_logo_one.png"),
                                      //   fit: BoxFit.fill,
                                      // ),
                                      // borderRadius: BorderRadius.all(
                                      //     Radius.circular(50))
                                    ),
                                    child: Icon(Icons.person),
                                  )
                                : SizedBox(
                                    height: 130,
                                    width: 130,
                                    child: CircleAvatar(
                                      // backgroundColor: Colors.grey.withOpacity(0.3),
                                      // radius: 60.0,
                                      backgroundImage: FileImage(_image!),
                                    ),
                                  ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: -8,
                            child: CupertinoButton(
                              onPressed: () async {
                                var source = ImageSource.gallery;
                                XFile? image = await imagePicker.pickImage(
                                  source: source,
                                  imageQuality: 50,
                                );
                                setState(() {
                                  if (image != null) {
                                    _image = File(image.path);
                                  }
                                });
                              },
                              child: GestureDetector(
                                onTap: (){
                                  Get.defaultDialog(
                                    title:"Ausgewähltes Bild",
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            pickImage(ImageSource.camera);
                                            Get.back();
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Row(children: [Icon(Icons.camera,size: 30,),Padding(
                                              padding: EdgeInsets.only(left: 8.0),
                                              child: Expanded(child: Text("Von der Kamera aufgenommen",style: TextStyle(fontSize: 14),)),
                                            ) ],),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            pickImage(ImageSource.gallery);
                                            Get.back();
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Row(children: [Icon(Icons.browse_gallery_sharp,size: 30),Padding(
                                              padding: EdgeInsets.only(left: 8.0),
                                              child: Text("Aus der Galerie ausgewählt",style: TextStyle(fontSize: 14),),
                                            ),
                                      ],),
                                          ),
                                        )
                                  ]));
                                },

                                child: const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded
                (
                child: SingleChildScrollView(
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gruppe",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Zahl",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Tour Nr",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Zahl",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("KFZ",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "alphanumerisch",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Mitarbeiter",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Zahl",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Datum",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "aktuelles Datum, automatisch, wenn die Tour gesannt wird",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Kunden Nr",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Zahl",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Uhrzeit Anfahrt",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "aktuelle Uhrzeit, wenn man den die Kunden Nr scannt",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Ende Fahrzeit",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Uhrzeit mit Button aktualisieren",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Beginn Pflege",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "gleiche Uhrzeit wie Ende Fahrzeit",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),


                        Text("Nicht geleistet 01",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Zahl",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("BNicht geleistet 02",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Zahl",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Nicht geleistet 03",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Zahl",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Nicht geleistet 04",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Zahl",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),
                        Text("Bericht",style: smallHeading.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                        AppTextField(
                          controller: TextEditingController(),
                          hintTxt: "Feld zum schreiben, entlos",
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02),

                      ],
                    ),
                  ),
                ),
              ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                       width: double.infinity,
                       child: ElevatedButton(onPressed: (){}, child: Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Text("Send Data",style: medium.copyWith(fontSize: 16,fontFamily:"Lato"),),
                       ))),
                 )
            ],
          ),
        ),
      ),
    );
  }
}


