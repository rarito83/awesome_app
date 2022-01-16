import 'package:awesome_app/provider/pexel_provider.dart';
import 'package:awesome_app/screen/widgets/card_photo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  static const routeName = 'secondScreen';

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Consumer<PexelProvider>(
            builder: (context, state, _) {
              if (state.state == ResultState.Loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.state == ResultState.HasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.result.photoList.length,
                  itemBuilder: (context, index) {
                    var pexel = state.result.photoList[index];
                    return CardPhoto(photo: pexel);
                  },
                );
              } else if (state.state == ResultState.NoData) {
                return Center(child: Text(state.message));
              } else if (state.state == ResultState.Error) {
                return Center(child: Text(state.message));
              } else {
                return Center(child: Text(''));
              }
            },
          ),
        ],
      ),
    ));
  }
}
