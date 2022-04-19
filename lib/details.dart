import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Ui_Kit/colos.dart';
import 'package:travelapp/apptext/largetext.dart';

import 'apptext/text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedstar = 5;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Container(
              height: 350,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage("img/mountain.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 330),
              height: 470,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LargeText(
                          title: "Yogasimaro",
                          color: AppColor.bigTextColor,
                        ),
                        LargeText(
                          title: "\$ 250",
                          color: AppColor.mainColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColor.mainColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AppText(
                          title: "USA, California",
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Wrap(
                            children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < selectedstar
                                ? AppColor.starColor
                                : AppColor.textColor1,
                          );
                        })),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      AppText(title: "(4.0)"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      child: LargeText(title: "People")),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    child: AppText(title: "Number of people in your group"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: List.generate(5, (index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? AppColor.mainColor
                                : AppColor.textColor1,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              ((index + 1) * 2).toString(),
                              style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: LargeText(title: "Description")),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: AppText(
                        title:
                            "Travel is the best partner to release the stress in your life. Traveler are more happiner and energetic as compare to other. You must need to travel to give some rest of your everyday work."),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 20),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: AppColor.textColor1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: AppColor.textColor1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
