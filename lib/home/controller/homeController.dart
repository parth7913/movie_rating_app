import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  TextEditingController txtname = TextEditingController();
  String name = "";
  void search(){
    name = txtname.text;
    update();
  }
}