/// https://stackoverflow.com/questions/55843801/how-to-make-a-flutter-view-with-an-item-below-a-center-in-parent-item/55845361#55845361

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyStatefulApp());
}

class MyStatefulApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyStatefulAppState();
  }
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  GlobalKey _smallTextKey = GlobalKey();
  double _bigTextMarginTop = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  Future<String> loadAsset() async {

  }

  _afterLayout(_) {
    _getSizes();
  }

  _getSizes() {
    final RenderBox renderBoxRed =
        _smallTextKey.currentContext.findRenderObject();
    final smallTextSize = renderBoxRed.size;
    setState(() {
      _bigTextMarginTop = smallTextSize.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Margin = $_bigTextMarginTop');
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: _bigTextMarginTop,
            ),
            Text(
              'Hello',
              style: TextStyle(
                  fontSize: 120,
                  backgroundColor: Colors.red,
                  color: Colors.white),
            ),
            Text(
              'Hello',
              style: TextStyle(
                  fontSize: 40,
                  backgroundColor: Colors.green,
                  color: Colors.white),
              key: _smallTextKey,
            ),
          ],
        )),
      ),
    );
  }
}
