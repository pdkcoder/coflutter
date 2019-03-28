import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Text('Home', style: TextStyle(fontSize: 30, color: Colors.white),),
        ),
      ),
    );
  }
}
