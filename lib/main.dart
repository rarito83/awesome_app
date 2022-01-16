import 'package:awesome_app/screen/detail_screen.dart';
import 'package:awesome_app/screen/home_screen.dart';
import 'package:awesome_app/source/model/photo.dart';
import 'package:flutter/material.dart';

import 'common/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: myTextTheme,
        colorScheme: myColorScheme,
        scaffoldBackgroundColor: colorRichBlack,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        DetailScreen.routeName: (context) => DetailScreen(
            dataPhoto: ModalRoute.of(context)?.settings.arguments as Photo),
      },
    );
  }
}
