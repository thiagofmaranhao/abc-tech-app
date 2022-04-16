import 'package:abc_tech_app_class/assistance_list/model/assistance.dart';
import 'package:abc_tech_app_class/assistance_list/services/assistance_service_interface.dart';
import 'package:get/get.dart';

class AssistanceController extends GetxController
    with StateMixin<List<Assistance>> {
  late AssistanceServiceInterface _assistanceService;
  List<Assistance> allAssists = [];
  List<Assistance> selectedAssists = [];

  @override
  void onInit() {
    super.onInit();
    _assistanceService = Get.find<AssistanceServiceInterface>();
    selectedAssists = Get.arguments;
    getAssistanceList();
  }

  void getAssistanceList() {
    change([], status: RxStatus.loading());
    _assistanceService.getAssists().then((value) {
      allAssists = value;
      change(value, status: RxStatus.success());
    }).onError((error, stackTrace) {
      change([], status: RxStatus.error(error.toString()));
    });
  }

  bool isSelected(int index) {
    Assistance assistance = allAssists[index];
    int indexFound =
        selectedAssists.indexWhere((element) => element.id == assistance.id);

    return indexFound != -1;
  }

  void selectAssist(int index) {
    if (!isSelected(index)) {
      selectedAssists.add(allAssists[index]);
    } else {
      selectedAssists.remove(allAssists[index]);
    }

    change(allAssists, status: RxStatus.success());
  }
}
