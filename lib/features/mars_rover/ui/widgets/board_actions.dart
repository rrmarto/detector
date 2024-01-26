import 'package:detector/features/mars_rover/ui/widgets/button_border_clipped.dart';
import 'package:detector/features/mars_rover/ui/widgets/decorated_button.dart';
import 'package:flutter/material.dart';


/// Widget to show the left board actions
class BoardActions extends StatelessWidget {
  const BoardActions({
    super.key,
    required this.dx,
    required this.dy,
    required this.gridCount,
  });
  final double dx;
  final double dy;
  final int gridCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _leftButton('dx: $dx'),
            const SizedBox(
              width: 20,
            ),
            _rightButton('dy: $dy'),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _rightButton('X: $gridCount'),
            const SizedBox(
              width: 20,
            ),
            _leftButton('Y: $gridCount'),
          ],
        ),
      ],
    );
  }

  ClipPath _rightButton(String text) {
    return ClipPath(
      clipper: ButtonBorderClipRight(diameter: 100),
      child: CustomPaint(
        painter: ButtonBorderPainterRight(
            borderColor: Colors.greenAccent,
            diameter: 100,
            bgcolor: const Color.fromARGB(255, 54, 133, 57).withOpacity(0.7)),
        child: DecoratedButton(text: text),
      ),
    );
  }

  ClipPath _leftButton(String text) {
    return ClipPath(
      clipper: ButtonBorderClip(diameter: 100),
      child: CustomPaint(
        painter: ButtonBorderPainter(
            borderColor: Colors.greenAccent,
            diameter: 100,
            bgcolor: const Color.fromARGB(255, 54, 133, 57).withOpacity(0.7)),
        child: DecoratedButton(text: text),
      ),
    );
  }
}
