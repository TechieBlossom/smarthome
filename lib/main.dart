import 'package:flutter/material.dart';
import 'package:smarthome/living_home/living_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white
      ),
      home: LivingHomePage(),
    );
  }
}
