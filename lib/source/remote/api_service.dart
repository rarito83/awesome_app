
import 'package:awesome_app/common/constants.dart';
import 'package:get/get.dart';

class ApiService extends GetConnect {
  Future<Response> getImagePexels() async {
    return await get(baseUrl + 'curated?per_page=30',
        headers: {'Authorization': 'apiKey'});
  }
}
