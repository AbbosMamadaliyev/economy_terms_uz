import 'package:flutter/material.dart';

import 'bodies/home_body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Qidiruv...',
            hintStyle: TextStyle(color: Colors.white60, fontSize: 18),
          ),
        ),
      ),
      body: const HomeBody(),
    );
  }
}
