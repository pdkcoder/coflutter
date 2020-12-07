import 'package:flutter/material.dart';

class CurveListItem extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const CurveListItem({Key key, this.child, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: CurvePainter(color: backgroundColor),
        child: child,
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  final Color color;

  CurvePainter({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint line = new Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, -30);
    path.arcToPoint(Offset(50, 0),
        radius: Radius.circular(60), clockwise: false);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(50, size.height);
    path.arcToPoint(Offset(0, size.height - 30), radius: Radius.circular(60));
    path.close();

    canvas.drawPath(path, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
