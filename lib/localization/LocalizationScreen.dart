import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationScreen extends StatefulWidget {
  const LocalizationScreen({Key? key}) : super(key: key);

  @override
  State<LocalizationScreen> createState() => _LocalizationScreenState();
}

class _LocalizationScreenState extends State<LocalizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('message'.tr),
            Text('name'.tr),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.updateLocale(Locale("en", "US"));
                    },
                    child: Text("English")),

                ElevatedButton(
                    onPressed: () {
                      Get.updateLocale(Locale("ur", "PK"));
                    },
                    child: Text("Urdu")),

              ],
            )
          ],
        ),
      ),
    );
  }
}
