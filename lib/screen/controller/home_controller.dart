import 'package:awesome_app/domain/entities/pexel_data.dart';
import 'package:awesome_app/domain/entities/photo.dart';
import 'package:awesome_app/domain/usecases/pexel_use_case.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<Photo>> {
  final PexelUseCase _getPexelsUseCase;
  HomeController({
    required PexelUseCase getPexelsUseCase,
  }) : _getPexelsUseCase = getPexelsUseCase;

  List<Photo> photos = [];
  PexelResponse pexelResponse = PexelResponse.empty();

  @override
  void onReady() {
    getPexels();
    super.onReady();
  }

  Future<void> getPexels() async {
    change(photos, status: RxStatus.loading());
    final result = await _getPexelsUseCase.call(null);
    if (result.isSuccess) {
      photos = result.pexels.photos;
      if (result.pexels.photos.isEmpty) {
        change(photos, status: RxStatus.empty());
      } else {
        change(photos, status: RxStatus.success());
      }
    } else {
      photos = result.pexels.photos;
      change(photos, status: RxStatus.error());
    }
  }
}
