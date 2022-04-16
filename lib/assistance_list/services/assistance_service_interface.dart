import 'package:abc_tech_app_class/assistance_list/model/assistance.dart';
import 'package:abc_tech_app_class/assistance_list/provider/assistance_provider_interface.dart';

abstract class AssistanceServiceInterface {
  Future<List<Assistance>> getAssists();
  Future<AssistanceServiceInterface> init(AssistanceProviderInterface provider);
}
