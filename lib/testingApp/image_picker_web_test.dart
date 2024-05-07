import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker_web/image_picker_web.dart';



class ImagePickerForWebTest extends StatefulWidget {
  @override
  _ImagePickerForWebTestState createState() => _ImagePickerForWebTestState();
}

class _ImagePickerForWebTestState extends State<ImagePickerForWebTest> {

  // Future<void> _pickImage() async {
  //   final pickedFile = await ImagePickerWeb.getImage(outputType: ImageType.widget);
  //
  //   setState(() {
  //     if (pickedFile != null) {
  //       _imageURL = pickedFile.url!;
  //     }
  //   });
  // }
  List<Widget> itemPhotosWidgetList = <Widget>[];
  final ImagePicker _picker = ImagePicker();
  File? file;
  List<XFile>? photo = <XFile>[];
  List<XFile> itemImagesList = <XFile>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Image Picker Web Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Row(children: List.generate(itemPhotosWidgetList.length, (index) => itemPhotosWidgetList[index]),),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: pickPhotoFromGallery,
              child:const Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
  pickPhotoFromGallery() async {
    photo = await _picker.pickMultiImage();
    if (photo != null) {
      setState(() {
        itemImagesList = itemImagesList + photo!;
        addImage();
        photo!.clear();
      });
    }
  }
  addImage() {
    for (var bytes in photo!) {
      itemPhotosWidgetList.add(Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 90.0,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              child: kIsWeb
                  ? Image.network(File(bytes.path).path)
                  : Image.file(
                File(bytes.path),
              ),
            ),
          ),
        ),
      ));
    }
  }
}
