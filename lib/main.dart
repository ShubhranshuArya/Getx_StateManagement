import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route_management/controller_screen.dart';
import 'package:getx_route_management/main_screen.dart';
import 'package:getx_route_management/service.dart';

Future<void> main() async {
  // This is where you initialize the init services.
  // Because you want these services to be alive until the app is alive.
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print("Starting the init services...");
  Get.putAsync<Service>(() async => await Service());
  print("Initialized all the init services");
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
