import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route_management/controller_screen.dart';
import 'package:getx_route_management/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ControllerScreen(),
    );
  }
}


