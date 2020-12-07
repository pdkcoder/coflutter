import 'package:coflutter/flutter/widgets/listview/curve_list/curve_list_item.dart';
import 'package:flutter/material.dart';

void main() => runApp(CoFlutterApp());

class CoFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coflutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffluter'),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          CurveListItem(),
          CurveListItem(
            backgroundColor: Color(0xffB4C55B),
            child: Column(
              children: <Widget>[
                Text(
                  'Test 1',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  'Test 1',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          CurveListItem(
            backgroundColor: Color(0xff52912E),
            child: Column(
              children: <Widget>[
                Text(
                  'Test 1',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  'Test 1',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          CurveListItem(
            backgroundColor: Color(0xff253E12),
            child: Column(
              children: <Widget>[
                Text(
                  'Test 1',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  'Test 1',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
