import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route_management/controller_class.dart';

class ControllerScreen extends StatelessWidget {
  ControllerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// Put - memory is intantly initialized even if we're not using this instance
    ControllerClass controllerClass = Get.put(
      ControllerClass(),

      // We can even specify the name of this intance and can find it later using the same reference.
      tag: "intance1",

      // This controller will be removed if it's not in use
      // But by setting permanent true we're telling the app to not delete this intance
      permanent: true,
    );

// // LazyPut - this will initialize the memory only when the controller is used.
//     Get.lazyPut(
//       () => ControllerClass(),
//       // This attribute is similar to "permanent" in put but this will delete
//       //and reinitialize the controller when it's used again.
//       fenix: true,
//     );

// // PutAsync - is used for async controllers.
//     Get.putAsync(() async => await ControllerClass());
    
// // Create - Here permanent is always true and isSingleton is false
//     Get.create(() => ControllerClass());

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
