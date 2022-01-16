// import 'dart:convert';
import 'package:awesome_app/source/model/photo.dart';

class PexelResponse {
  final List<Photo> photoList;

  const PexelResponse({required this.photoList});

  factory PexelResponse.fromJson(Map<String, dynamic> json) => PexelResponse(
        photoList: List<Photo>.from((json["photos"] as List)
            .map((x) => Photo.fromJson(x))
            .where((element) => element.url.isNotEmpty)),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(photoList.map((x) => x.toJson())),
      };
}

class PexelData {
  const PexelData({
    required this.page,
    required this.perPage,
    required this.photos,
    required this.totalResults,
    required this.nextPage,
  });

  final int page;
  final int perPage;
  final List<Photo> photos;
  final int totalResults;
  final String nextPage;

  factory PexelData.fromJson(Map<String, dynamic> json) => PexelData(
        page: json["page"],
        perPage: json["per_page"],
        photos: List<Photo>.from(json["photos"].map((x) => x)).toList(),
        totalResults: json["total_results"],
        nextPage: json["next_page"],
      );
}
