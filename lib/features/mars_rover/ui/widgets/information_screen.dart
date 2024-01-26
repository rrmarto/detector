import 'package:flutter/material.dart';

/// Widget to show information of the mars rover
class InformationScreen extends StatelessWidget {
  const InformationScreen({
    super.key,
    required this.size,
    required this.color,
    required this.text,
  });

  final Size size;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3,
      width: size.width / 4,
      child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: const [
              BoxShadow(
                  color: Colors.greenAccent, blurRadius: 5, spreadRadius: 5)
            ],
            border: Border.all(color: color, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )),
    );
  }
}
