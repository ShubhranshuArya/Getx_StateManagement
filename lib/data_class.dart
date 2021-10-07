import 'package:get/get.dart';

class DataClass {
  // This is the first way

  // To make individual elements observable
  var name = "Shubh".obs;
  var age = 20.obs;

  // This is the second way

  // var name;
  // var age;
  // DataClass({
  //   this.name,
  //   this.age,
  // });
}
