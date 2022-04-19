import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: 350,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.red,
                  // image: DecorationImage(
                  //   image: AssetImage("img/mountain.jpeg"),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
