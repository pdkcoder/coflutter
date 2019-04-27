import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(TransformAppDemo());
}

class TransformAppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transform Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TransformDemo(),
    );
  }
}

class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transform Demo'),
        ),
        body: Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildOriginalContainer(),
              SizedBox(
                height: 100,
              ),
              //buildRotatedContainer(),
              //buildScaledContainer()
//              buildTranslatedContainer()
              buildSkewedContainer()
            ],
          )),
        ));
  }

  buildOriginalContainer() {
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
    );
  }

  buildRotatedContainer() {
    return Transform.rotate(
        angle: pi / 4,
        origin: Offset(0, 10),
        child: Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ));
  }

  buildScaledContainer() {
    return Transform.scale(
      scale: 2,
      child: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    );
  }

  buildTranslatedContainer() {
    return Transform.translate(
      offset: Offset(30, 30),
      child: Container(
          width: 100, height: 100, color: Colors.blue.withOpacity(0.5)),
    );
  }

  buildSkewedContainer() {
    return Transform(
      transform: Matrix4.skew(0.2, 0.2),
      child: Container(
          width: 100, height: 100, color: Colors.blue),
    );
  }
}
