//import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//void main() {
//  runApp(MyStatelessApp());
//}
//
//class MyStatelessApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Shared Preferences Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: SharedPreferencesDemo(),
//    );
//  }
//}
//
//class SharedPreferencesDemo extends StatefulWidget {
//  @override
//  _SharedPreferencesDemoState createState() => _SharedPreferencesDemoState();
//}
//
//class _SharedPreferencesDemoState extends State<SharedPreferencesDemo> {
//  int _counts = 0;
//
//  @override
//  void initState() {
//    super.initState();
//
//    _loadCounts();
//  }
//
//  @override
//  void dispose() {
//    _increaseAndSaveCounts();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return SafeArea(
//        child: Scaffold(
//            appBar: AppBar(
//              title: Text('Shared Preferences Demo'),
//            ),
//            body: Center(
//              child: Text(
//                'The app has been opened $_counts times',
//                style: TextStyle(color: Colors.blue, fontSize: 25),
//              ),
//            )));
//  }
//
//  Future _loadCounts() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    setState(() {
//      _counts = (prefs.getInt('counts') ?? 0);
//    });
//  }
//
//  Future _increaseAndSaveCounts() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    _counts = (prefs.getInt('counts') ?? 0);
//    prefs.setInt('counts', _counts + 1);
//  }
//}
