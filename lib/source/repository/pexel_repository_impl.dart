import 'package:awesome_app/domain/repository/pexel_repository.dart';
import 'package:awesome_app/domain/entities/pexel_data.dart';
import 'package:awesome_app/source/remote/api_service.dart';

class PexelRepositoryImpl extends PexelRepository {
  final ApiService _api;

  PexelRepositoryImpl({
    required ApiService apiService,
  }) : _api = apiService;

  @override
  Future<PexelResponse> getPexels() async {
    final response = await _api.getImagePexels();
    if (response.statusCode == 200) {
      return PexelResponse.fromJson(response.body);
    } else {
      return PexelResponse.empty();
    }
  }
}