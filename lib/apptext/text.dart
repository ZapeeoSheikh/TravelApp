import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String title;
  final Color color;
  final double? size;
  AppText(
      {Key? key,
      this.size = 16,
      required this.title,
      this.color = Colors.black54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: size,
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
