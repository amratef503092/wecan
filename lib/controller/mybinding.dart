import 'package:get/get.dart';
import 'package:wecan/controller/home_controller/home_controller.dart';
import 'package:wecan/view/home/home.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
    // TODO: implement dependencies
  }

}