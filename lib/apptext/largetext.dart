import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  LargeText(
      {Key? key,
      this.size = 24,
      required this.title,
      this.color = Colors.black87})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
