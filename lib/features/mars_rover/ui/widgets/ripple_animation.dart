import 'package:flutter/material.dart';

class RippleAnimationWidget extends StatefulWidget {
  const RippleAnimationWidget({
    this.child,
    super.key,
  });
  final Widget? child;

  @override
  State<RippleAnimationWidget> createState() => _RippleAnimationWidgetState();
}

class _RippleAnimationWidgetState extends State<RippleAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0.5,
      duration: const Duration(seconds: 1),
    );
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  AnimatedBuilder _buildBody() {
    return AnimatedBuilder(
      animation:
          CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            _buildCircleRipple(10 * _controller.value),
            _buildCircleRipple(30 * _controller.value),
            _buildCircleRipple(50 * _controller.value),
            _buildCircleRipple(70 * _controller.value),
          ],
        );
      },
    );
  }

  Widget _buildCircleRipple(double radius) {
    return widget.child != null
        ? Opacity(opacity: 1 - _controller.value, child: widget.child!)
        : Center(
            child: Container(
              width: radius,
              height: radius,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 107, 255, 112)
                    .withOpacity(1 - _controller.value),
              ),
            ),
          );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
