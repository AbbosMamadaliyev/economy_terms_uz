import 'package:flutter/material.dart';
import 'package:flutter_lesson3_task1/screens/info_page.dart';
import 'package:flutter_lesson3_task1/screens/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        '/info': (context) => const InfoPage(),
      },
      initialRoute: '/',
    );
  }
}
