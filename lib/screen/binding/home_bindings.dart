import 'package:awesome_app/domain/repository/pexel_repository.dart';
import 'package:awesome_app/domain/usecases/pexel_use_case.dart';
import 'package:awesome_app/screen/controller/home_controller.dart';
import 'package:awesome_app/source/repository/pexel_repository_impl.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PexelRepository>(PexelRepositoryImpl(apiService: Get.find()));
    Get.put<PexelUseCase>(GetPexelUseCaseImpl(pexelRepository: Get.find()));
    Get.put<HomeController>(HomeController(getPexelsUseCase: Get.find()));
  }
}