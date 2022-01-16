import 'package:awesome_app/provider/pexel_provider.dart';
import 'package:awesome_app/source/remote/api_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final photoList = ChangeNotifierProvider<PexelProvider>(
      create: (_) => PexelProvider(apiService: ApiService()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.view_list),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    childAspectRatio: 3 / 4,
                    mainAxisSpacing: 2),
                itemBuilder: (context, index) {
                  return GridTile(
                      child: InkWell(
                    child: photoList,
                    onTap: () {},
                  ));
                })
          ],
        ),
      ),
    );
  }
}
