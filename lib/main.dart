import 'package:flutter/material.dart';
import 'package:h1d023051_tugas6/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 6 Flutter',
      home: WelcomePage(),
    );
  }
}
