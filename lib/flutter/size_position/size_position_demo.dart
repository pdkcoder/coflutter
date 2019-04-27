import 'package:flutter/material.dart';

void main() {
  runApp(MyStatelessApp());
}

class MyStatelessApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffluter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StatelessWidgetDemo(),
    );
  }
}

class StatelessWidgetDemo extends StatefulWidget {
  @override
  _StatelessWidgetDemoState createState() => _StatelessWidgetDemoState();
}

class _StatelessWidgetDemoState extends State<StatelessWidgetDemo> {
  GlobalKey _containerKey = GlobalKey();

  Size _containerSize = Size(0, 0);

  Offset _containerPosition = Offset(0, 0);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(_onBuildCompleted);
  }

  _onBuildCompleted(_) {
    _getContainerSize();

    _getContainerPosition();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Coffluter Demo'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    key: _containerKey,
                    width: 200,
                    height: 200,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Text(
                      'Size: width = ${_containerSize.width} - height = ${_containerSize.height}'),
                  SizedBox(
                    height: 20,
                  ),

                  Text(
                      'Position: x = ${_containerPosition.dx} - y = ${_containerPosition.dy}'),
                ],
              ),
            )));
  }

  _getContainerSize() {
    final RenderBox containerRenderBox =
        _containerKey.currentContext.findRenderObject();
    final containerSize = containerRenderBox.size;
    setState(() {
      _containerSize = containerSize;
    });
  }

  _getContainerPosition() {
    final RenderBox containerRenderBox =
        _containerKey.currentContext.findRenderObject();
    final containerPosition = containerRenderBox.localToGlobal(Offset.zero);

    setState(() {
      _containerPosition = containerPosition;
    });
  }
}
