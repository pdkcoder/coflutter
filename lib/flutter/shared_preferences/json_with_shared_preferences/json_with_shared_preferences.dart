import 'dart:convert';

import 'package:coflutter/flutter/shared_preferences/json_with_shared_preferences/user.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(SharedPrefsJsonDemo());

class SharedPrefsJsonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coflutter - SharedPrefs with Json',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Coflutter - SharedPrefs with Json'),
          backgroundColor: const Color(0xffae00f0),
        ),
        body: DemoScreen(),
      ),
    );
  }
}

class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  void initState() {
    super.initState();

    saveUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: getUserInfo,
        child: Text('Show user info'),
      ),
    );
  }

  Future<User> getUserInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    Map<String, dynamic> userMap = {};
    final String? userStr = prefs.getString('user');
    if (userStr != null) {
      userMap = jsonDecode(userStr) as Map<String, dynamic>;
    }

    final User user = User.fromJson(userMap);
    print(user);
    return user;
  }

  Future<void> saveUserInfo() async {
    final User user = User.fromJson({
      'info': {
        'id': '1',
        'name': 'Coflutter',
        'avatar': 'https://example.com/coflutter.jpg'
      },
      'token': 'xxx'
    });

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool result = await prefs.setString('user', jsonEncode(user));
    print(result);
  }
}
