import 'package:flutter/material.dart';

//TODO: Refactor this widget to use only one CustomPainter and CustomClipper

class ButtonBorderClip extends CustomClipper<Path> {
  final double diameter;
  ButtonBorderClip({
    required this.diameter,
  });

  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width / 3, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height * 0.7)
      ..lineTo(size.width * 0.7, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, size.height * 0.3)
      ..lineTo(size.width / 3, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant ButtonBorderClip oldClipper) {
    return diameter != oldClipper.diameter;
  }
}

class ButtonBorderClipRight extends CustomClipper<Path> {
  final double diameter;
  ButtonBorderClipRight({
    required this.diameter,
  });

  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width * 0.7, 0)
      ..lineTo(size.width, size.height * 0.3)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width / 3, size.height)
      ..lineTo(0, size.height * 0.7)
      ..lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant ButtonBorderClipRight oldClipper) {
    return diameter != oldClipper.diameter;
  }
}

class ButtonBorderPainter extends CustomPainter {
  final double diameter;
  final Color bgcolor;
  final Color borderColor;
  ButtonBorderPainter({
    required this.diameter,
    required this.borderColor,
    required this.bgcolor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()..color = bgcolor;
    canvas.drawRect(
        Rect.fromLTWH(0, 0, size.width, size.height), backgroundPaint);

    final path = Path()
      ..moveTo(size.width / 3, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height * 0.7)
      ..lineTo(size.width * 0.7, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, size.height * 0.3)
      ..lineTo(size.width / 3, 0);
    path.close();
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0
      ..color = borderColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class ButtonBorderPainterRight extends CustomPainter {
  final double diameter;
  final Color bgcolor;
  final Color borderColor;
  ButtonBorderPainterRight({
    required this.diameter,
    required this.borderColor,
    required this.bgcolor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()..color = bgcolor;
    canvas.drawRect(
        Rect.fromLTWH(0, 0, size.width, size.height), backgroundPaint);

    final path = Path()
      ..lineTo(size.width * 0.7, 0)
      ..lineTo(size.width, size.height * 0.3)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width / 3, size.height)
      ..lineTo(0, size.height * 0.7)
      ..lineTo(0, 0);
    path.close();
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0
      ..color = borderColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
