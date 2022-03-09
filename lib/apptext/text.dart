import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String title;
  Color color;
  double size;
  AppText(
      {Key? key,
      required this.size,
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
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
