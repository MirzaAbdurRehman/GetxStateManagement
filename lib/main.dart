import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller_practice/Screen/slider_screen.dart';
import 'Screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SlideScreen(),
    );
  }
}

