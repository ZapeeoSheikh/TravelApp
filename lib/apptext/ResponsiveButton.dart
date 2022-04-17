import 'package:flutter/material.dart';
import 'package:travelapp/Ui_Kit/colos.dart';

class ResponsiveButton extends StatelessWidget {
  final double width;
  final Color? color;

  const ResponsiveButton({Key? key, required this.width, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 6),
      width: width,
      height: 60,
      decoration: BoxDecoration(
        color: AppColor.mainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image(
        image: AssetImage(
          "img/button-one.png",
        ),
      ),
    );
  }
}
