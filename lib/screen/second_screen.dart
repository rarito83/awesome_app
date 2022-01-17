import 'package:flutter/material.dart';

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
          // if (state.state == ResultState.Loading) {
          //   return const Center(child: CircularProgressIndicator());
          // } else if (state.state == ResultState.HasData) {
          //   return ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: state.result.length,
          //     itemBuilder: (context, index) {
          //       var pexel = state.result[index];
          //       return CardPhoto(photo: pexel);
          //     },
          //   );
          // } else if (state.state == ResultState.NoData) {
          //   return Center(child: Text(state.message));
          // } else if (state.state == ResultState.Error) {
          //   return Center(child: Text(state.message));
          // } else {
          //   return Center(child: Text(''));
          // }
        ],
      ),
    ));
  }
}
