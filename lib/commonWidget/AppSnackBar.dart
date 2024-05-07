import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController appSnackBar(){
  return Get.snackbar("Alert", "You cant not add more than 10 images",backgroundColor: Colors.red,margin:const EdgeInsets.only(top:16));
}