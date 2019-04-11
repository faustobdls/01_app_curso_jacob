import 'package:flutter/material.dart';
import 'package:stack/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        /* appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Fausto Blanco',
            style: TextStyle(color: Colors.white),
          ),
        ), */
        body: HomeWidget(),
      ),
    );
  }
}

