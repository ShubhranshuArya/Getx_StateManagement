import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route_management/controller_class.dart';

class ControllerScreen extends StatelessWidget {
  ControllerScreen({Key? key}) : super(key: key);

  ControllerClass controllerClass = Get.put(ControllerClass());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // This is the first way - direct controller
              // Obx(
              // () => Text(
              //   "Name is ${controllerClass.data.name}\nAge is ${controllerClass.data.age}",
              // ),
              // ),

              // This is the second way - Type controller
              // GetX<ControllerClass>(
              //   builder: (controller) => Text(
              //     "Name is ${controller.data.name}\nAge is ${controller.data.age}",
              //   ),
              // ),

              // This is the thrid way - GetBuilder
              GetBuilder<ControllerClass>(
                id: "textUpdate",
                builder: (controller) {
                  return Text(
                    "Name is ${controller.data.name}",
                  );
                },
              ),
              GetBuilder<ControllerClass>(
                id: "AgeUpdate",
                builder: (controller) {
                  return Text(
                    "Age is ${controller.data.age}",
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  controllerClass.convertToUpper();
                },
                child: Text(
                  "Upper",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
