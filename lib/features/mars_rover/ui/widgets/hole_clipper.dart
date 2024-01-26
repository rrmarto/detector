import 'package:flutter/material.dart';


/// Clipper to draw a hole in the middle of the screen
class HoleClipper extends CustomClipper<Path> {
  final double diameter;
  HoleClipper({
    required this.diameter,
  });

  @override
  Path getClip(Size size) {
    final rect = Rect.fromLTRB(0, 0, size.width, size.height);

    final path = Path()
      ..fillType = PathFillType.evenOdd
      ..addOval(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.height / 2),
            width: diameter,
            height: diameter),
      )
      ..addRect(rect);

    return path;
  }

  @override
  bool shouldReclip(covariant HoleClipper oldClipper) {
    return diameter != oldClipper.diameter;
  }
}

class ClipShadowPath extends StatelessWidget {
  final Shadow shadow;
  final CustomClipper<Path> clipper;
  final Widget child;

  const ClipShadowPath({
    Key? key,
    required this.shadow,
    required this.clipper,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ClipShadowShadowPainter(
        clipper: clipper,
        shadow: shadow,
      ),
      child: ClipPath(clipper: clipper, child: child),
    );
  }
}

class _ClipShadowShadowPainter extends CustomPainter {
  final Shadow shadow;
  final CustomClipper<Path> clipper;

  _ClipShadowShadowPainter({required this.shadow, required this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
