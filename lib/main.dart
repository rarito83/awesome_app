import 'package:awesome_app/screen/binding/home_bindings.dart';
import 'package:awesome_app/screen/detail_screen.dart';
import 'package:awesome_app/screen/home_screen.dart';
import 'package:awesome_app/screen/second_screen.dart';
import 'package:awesome_app/domain/entities/photo.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'common/constants.dart';
import 'common/main_binding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Awesome App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: myTextTheme,
        colorScheme: myColorScheme,
        scaffoldBackgroundColor: colorRichBlack,
      ),
      initialBinding: MainBinding(),
      // initialRoute: HomeScreen.routeName,
      getPages: [
        GetPage(name: '/home', page: () => HomeScreen(), binding: HomeBinding()),
        GetPage(name: '/second', page: () => SecondScreen()),
        GetPage(name: '/detail', page: () => DetailScreen()),
      ],
      // routes: {
      //   HomeScreen.routeName: (context) => HomeScreen(),
      //   SecondScreen.routeName: (context) => SecondScreen(),
      //   DetailScreen.routeName: (context) => DetailScreen(
      //       dataPhoto: ModalRoute.of(context)?.settings.arguments as Photo),
      // },
    );
  }
}
