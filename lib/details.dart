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
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: AppText(
                      title: "Rating about it",
                      color: AppColor.mainColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Icon(
                            Icons.star,
                            color: AppColor.starColor,
                          );
                        }),
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
