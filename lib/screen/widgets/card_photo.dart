import 'package:awesome_app/common/constants.dart';
import 'package:awesome_app/screen/detail_screen.dart';
import 'package:awesome_app/domain/entities/photo.dart';
import 'package:flutter/material.dart';

class CardPhoto extends StatelessWidget {
  final Photo photo;

  const CardPhoto({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: myColorScheme.secondary,
      child: ListTile(
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Hero(
          tag: photo.src.original,
          child: Image.network(
            photo.src.original,
            width: 100,
          ),
        ),
        title: Text(
          photo.liked.toString(),
        ),
        subtitle: Text(photo.photographer),
        onTap: () => Navigator.pushNamed(
          context,
          DetailScreen.routeName,
          arguments: photo,
        ),
      ),
    );
  }
}
