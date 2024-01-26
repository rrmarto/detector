import 'package:flutter/material.dart';

/// Widget to show the grid
class InteractiveGrid extends StatefulWidget {
  const InteractiveGrid({super.key, required this.grid});
  final Widget grid;

  @override
  State<InteractiveGrid> createState() => _InteractiveGridState();
}

class _InteractiveGridState extends State<InteractiveGrid> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InteractiveViewer(
        maxScale: 5,
        child: widget.grid,
      ),
    );
  }
}
