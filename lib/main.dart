import 'package:flutter/material.dart';
import 'package:processo_badaro/pages/home_page.dart';
import 'package:processo_badaro/theme/theme_class.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}