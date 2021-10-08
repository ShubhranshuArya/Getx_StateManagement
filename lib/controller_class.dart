import 'package:get/get.dart';
import 'package:getx_route_management/data_class.dart';

class ControllerClass extends GetxController {
  var data = DataClass();
  var num = 10.obs;

  void convertToUpper() {
    data.name.value = data.name.value.toUpperCase();
    data.age.value = data.age.value + 1;

    // This update method is used only with get builder
    // update();
    // Here we can give id to particular builder and update is accordingly
    update(['AgeUpdate']);
  }

  // Lifecycle Methods of a controller

// On Init is the best place to initialize workers
// Workers are callback that are condition specific
  @override
  void onInit() {
    // Ever - calls whenever the listner is called
    ever(num, (_) => print(num));

    // EverAll - called whenever the list of listners are called
    everAll([num], (_) => print(num));

    // Once - Called only once when the value of the listner changes
    once(num, (_) => print(num));

    // Debounce - called only once by specifying the time of change
    // Generally used in search - send the search variable once the user stops typing
    debounce(num, (_) => print(num));

    // Interval - called only once in a given time interval
    // if you set a time interval of 3 sec then this call back is sent only once in 3 secs
    // even if the listner is triggered more than once in these 3 secs.
    interval(num, (_) => print(num));
    
    print("Controller Init");
    super.onInit();
  }

  @override
  void onClose() {
    print("Controller Disposed");
    super.onClose();
  }
}
