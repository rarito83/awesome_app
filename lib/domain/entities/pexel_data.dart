import 'dart:convert';

import 'package:awesome_app/domain/entities/photo.dart';
import 'package:equatable/equatable.dart';

PexelResponse pexelResponseFromJson(String str) =>
    PexelResponse.fromJson(json.decode(str));

String pexelResponseToJson(PexelResponse data) => json.encode(data.toJson());

class PexelResponse extends Equatable {
  PexelResponse({
    required this.page,
    required this.perPage,
    required this.photos,
    required this.totalResults,
    required this.nextPage,
  });

  int page;
  int perPage;
  List<Photo> photos;
  int totalResults;
  String nextPage;

  PexelResponse.empty({
    this.page = 0,
    this.perPage = 0,
    this.photos = const [],
    this.totalResults = 0,
    this.nextPage = '',
  });

  factory PexelResponse.fromJson(Map<String, dynamic> json) => PexelResponse(
        page: json["page"],
        perPage: json["per_page"],
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
        totalResults: json["total_results"],
        nextPage: json["next_page"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
        "total_results": totalResults,
        "next_page": nextPage,
      };

  @override
  List<Object?> get props => [
    page,
    perPage,
    photos,
    totalResults,
    nextPage,
  ];
}
