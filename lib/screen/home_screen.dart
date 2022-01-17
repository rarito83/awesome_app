import 'package:awesome_app/screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome App'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.view_list),
          ),
        ],
      ),

      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 2/4,
          ),
          itemBuilder: (_, index) {
            return GridTile(
              child: InkWell(
                child: Container(
                  alignment: Alignment.centerLeft,
                ),
                onTap: () {
                  Get.to('/detail', arguments: dataPhoto);
                },
              ),
            );
          }
      ),
    );
  }
}

