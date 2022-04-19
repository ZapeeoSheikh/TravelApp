import 'package:flutter/material.dart';
import 'package:travelapp/Ui_Kit/colos.dart';
import 'package:travelapp/apptext/text.dart';

class ResponsiveButton extends StatelessWidget {
  final double width;
  final Color? color;
  bool? isResponsive = false;

  ResponsiveButton(
      {Key? key, required this.width, this.color, this.isResponsive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 6),
        width: width,
        height: 60,
        decoration: BoxDecoration(
          color: AppColor.mainColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? AppText(title: "Book Trip Now")
                : Container(),
            Image(
              image: AssetImage(
                "img/button-one.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
