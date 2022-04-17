import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/ResponsiveButton.dart';
import 'package:travelapp/Ui_Kit/colos.dart';
import 'package:travelapp/apptext/text.dart';

import 'apptext/largetext.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List image = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/" + image[index]),
                fit: BoxFit.cover,
              ),
            ),

            // ======== material on to the pages of the screen ============
            child: Container(
              margin: const EdgeInsets.only(top: 150.0, left: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LargeText(title: "Travel"),
                      AppText(size: 30, title: "Mountains"),
                      SizedBox(
                        height: 21,
                      ),
                      Container(
                        /*This Container is for the area used into the page for short description */
                        width: 250,
                        child: AppText(
                            title:
                                "Discover the fact about the travel along with the fancy images under the single roof"),
                      ),
                      SizedBox(height: 20),
                      //This Container is used for the Responsive Button that we gonna published on to the welcome screen
                      ResponsiveButton(width: 120)
                    ],
                  ),
                  Column(
                    children: List.generate(
                      3,
                      (indexDot) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDot ? 25 : 8,
                          decoration: BoxDecoration(
                            color: index == indexDot
                                ? AppColor.mainColor
                                : AppColor.mainColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
