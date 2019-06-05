import 'dart:async';

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

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Timer _timer;
  int _totalSeconds = 200;
  String remainingTime;

  @override
  void initState() {
    super.initState();

    remainingTime = formatRemainingTime(_totalSeconds);

    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_totalSeconds < 1) {
        timer.cancel();
        remainingTime = '0:0';
      } else {
        _totalSeconds--;
        remainingTime = formatRemainingTime(_totalSeconds);
      }
      setState(() {
        remainingTime = remainingTime;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffluter'),
      ),
      body: Center(
          child: Text(
        remainingTime,
        style: TextStyle(fontSize: 30, color: Colors.lightBlue),
      )),
    );
  }

  String formatRemainingTime(int seconds) {
    print('Seconds ---> $seconds');
    Duration duration = Duration(seconds: seconds);
    int remainingMinutes = duration.inMinutes;
    int remainingSeconds = seconds - remainingMinutes * 60;
    return '$remainingMinutes:$remainingSeconds';
  }
}
