import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route_management/data_class.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

// This is the first way
  var data = DataClass();

// This is the second way
  // final data = DataClass(name: "Shubh",age: 20).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  // For 1st way -> data.name.value
                  "Name is ${data.name.value}\nAge is ${data.name.value}",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // For 1st way -> data.name.value
                  data.name.value = data.name.value.toUpperCase();
                },
                child: Text("Upper"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
