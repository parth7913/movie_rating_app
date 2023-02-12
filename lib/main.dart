import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_rating/home/view/homepage.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) => HomePage(),
      },
    ),
  );
}
