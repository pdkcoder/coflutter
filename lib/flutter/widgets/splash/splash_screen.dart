import 'package:coflutter/flutter/widgets/splash/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  /// NEW CODE
  @override
  void initState() {
    super.initState();

    /// Initialize data, then navigator to Home screen
    initData().then((value) {
      navigateToHomeScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(
        child: FlutterLogo(size: 200),
      ),
    );
  }

  /// NEW CODE
  /// We can do long run task here.
  /// In this example, we just delay 3 seconds, nothing complicated.
  Future<void> initData() async {
    await Future.delayed(Duration(seconds: 3));
  }

  /// NEW CODE
  /// Navigate to Home screen
  void navigateToHomeScreen() {
    /// Push home screen and replace (close/exit) splash screen
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
