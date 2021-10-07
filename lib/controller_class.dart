import 'package:get/get.dart';
import 'package:getx_route_management/data_class.dart';

class ControllerClass extends GetxController {
  var data = DataClass();

  void convertToUpper() {
    data.name.value = data.name.value.toUpperCase();
    data.age.value = data.age.value + 1;

    // This update method is used only with get builder
    // update();
    // Here we can give id to particular builder and update is accordingly
    update(['AgeUpdate']);
  }

  // Lifecycle Methods of a controller

  @override
  void onInit() {
    print("Controller Init");
    super.onInit();
  }

  @override
  void onClose() {
    print("Controller Disposed");
    super.onClose();
  }
}
