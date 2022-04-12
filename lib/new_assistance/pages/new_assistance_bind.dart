import 'package:abc_tech_app_class/new_assistance/controller/new_assistance_controller.dart';
import 'package:get/get.dart';

class NewAssistanceBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewAssistanceController>(() => NewAssistanceController());
  }
}
