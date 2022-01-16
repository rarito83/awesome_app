import 'dart:convert';

import 'package:awesome_app/common/constants.dart';
import 'package:awesome_app/source/model/pexel_data.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<PexelResponse> getImagePexels() async {
    final response = await http.get(Uri.parse(baseUrl + 'curated?per_page=30'),
        headers: ({'Authorization': 'apiKey'}));

    if (response.statusCode == 200) {
      print(response.body);
      return PexelResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed Load Data From Server!!");
    }
  }
}
