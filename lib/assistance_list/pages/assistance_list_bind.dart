import 'package:abc_tech_app_class/assistance_list/controller/assistance_controller.dart';
import 'package:get/get.dart';

class AssistanceListBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssistanceController>(() => AssistanceController());
  }
}
