import 'package:awesome_app/source/remote/api_service.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
  }
}