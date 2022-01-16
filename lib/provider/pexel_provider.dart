import 'package:awesome_app/source/model/pexel_data.dart';
import 'package:awesome_app/source/remote/api_service.dart';
import 'package:flutter/material.dart';

enum ResultState { Loading, NoData, HasData, Error }

class PexelProvider extends ChangeNotifier {
  final ApiService apiService;

  PexelProvider({required this.apiService}) {
    fetchAllPexels();
  }

  late PexelResponse _pexelData;
  late ResultState _state;
  String _message = '';

  String get message => _message;

  PexelResponse get result => _pexelData;

  ResultState get state => _state;

  Future<dynamic> fetchAllPexels() async {
    try {
      _state = ResultState.Loading;
      notifyListeners();
      final data = await apiService.getImagePexels();
      if (data.photoList.isEmpty) {
        _state = ResultState.NoData;
        notifyListeners();
        return _message = 'Empty Data';
      } else {
        _state = ResultState.HasData;
        notifyListeners();
        return _pexelData = data;
      }
    } catch (e) {
      _state = ResultState.Error;
      notifyListeners();
      return _message = 'Error -> $e';
    }
  }
}
