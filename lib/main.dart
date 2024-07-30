import 'package:flutter/material.dart';
import 'package:non/my_home_page.dart';
void main() {
  runApp(Mainpage());
}
class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}