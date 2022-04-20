import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Myimg.dart';
import 'package:travelapp/Ui_Kit/colos.dart';
import 'package:travelapp/apptext/ResponsiveButton.dart';
import 'package:travelapp/apptext/largetext.dart';
import 'package:travelapp/routes/routes.dart';

import 'apptext/text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selected = 4;
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
                  image: AssetImage("img/" + MyImg.bgimg[6]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 70,
              right: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.mainpage);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert_sharp,
                      size: 28,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.welcome);
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 300),
              height: 500,
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
                  ), //=====Yogasimaro
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
                  ), // ===== Location
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Wrap(
                            children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < selected
                                ? AppColor.starColor
                                : AppColor.textColor1,
                            size: 15,
                          );
                        })),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      AppText(
                        title: "(4.0)",
                        size: 15,
                      ),
                    ],
                  ), // ===== Stars
                  SizedBox(
                    height: 10,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
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
                    ],
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
                  // ======= Last Row Buttons ==========
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
                        SizedBox(
                          width: 20,
                        ),
                        ResponsiveButton(
                          width: double.maxFinite,
                          isResponsive: true,
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
