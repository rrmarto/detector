import 'package:flutter/material.dart';

/// Round button
class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.size,
    this.enabled = true,
  });
  final String text;
  final VoidCallback onTap;
  final Size size;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 0.2,
      child: InkWell(
        onTap: enabled ? onTap : null,
        child: SizedBox(
          height: size.height / 3,
          width: size.width / 4,
          child: DecoratedBox(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(color: Colors.red, blurRadius: 5, spreadRadius: 5)
                ],
                gradient: const RadialGradient(colors: [
                  Color.fromARGB(255, 210, 58, 58),
                  Color.fromARGB(255, 133, 24, 16)
                ]),
                border: Border.all(color: Colors.redAccent, width: 2),
                shape: BoxShape.circle),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
