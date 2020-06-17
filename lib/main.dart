import 'package:flutter/material.dart';
import 'package:mypanoramapp/src/constants/constants.dart';
import 'package:mypanoramapp/src/pages/home_page.dart';

void main() =>  runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panoramapp',
      theme: ThemeData(
        primaryColor: KPrimaryLightColor,
        scaffoldBackgroundColor: KPrimaryColor,
      ),
      home: HomePage(),
    );
  }
}
