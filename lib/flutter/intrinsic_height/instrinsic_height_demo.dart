import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 2.0,
                  ),
                ],
                border: Border.all(
                  color: Colors.black38,
                )),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      width: 30.0,
                      //                 height: 30.0,
                      color: Colors.red,
                      child: Icon(Icons.accessibility_new)),
                  Flexible(
                      child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. '
                          'This is a long text. ',
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.red),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
