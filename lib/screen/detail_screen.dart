import 'package:awesome_app/domain/entities/photo.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detailScreen';

  final Photo dataPhoto;

  const DetailScreen({required this.dataPhoto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 180.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              dataPhoto.photographer.toString(),
              textScaleFactor: 1,
            ),
            background: Image.network(
              dataPhoto.url,
              fit: BoxFit.fill,
            ),
          ),
          pinned: true,
        ),
        Column(
          children: [
            ClipRRect(
              child: Hero(
                  tag: dataPhoto.url,
                  child: Image.network(
                    dataPhoto.url,
                    width: 450,
                    height: 300,
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dataPhoto.photographer,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  const Divider(color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
