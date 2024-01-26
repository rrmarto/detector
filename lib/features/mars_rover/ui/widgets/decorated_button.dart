import 'package:flutter/material.dart';

class DecoratedButton extends StatelessWidget {
  const DecoratedButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, color: Colors.greenAccent),
            ),
          ),
        ),
      ),
    );
  }
}
