import 'package:flutter/material.dart';

void main() {
  runApp(RotatedBoxDemoApp());
}

class RotatedBoxDemoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter RotatedBox Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RotatedBoxDemoWidget(),
    );
  }
}

class RotatedBoxDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter RotatedBox Demo'),
            ),
            body: Center(
              child: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Coflutter', style: TextStyle(fontSize: 30),)),
            )));
  }
}