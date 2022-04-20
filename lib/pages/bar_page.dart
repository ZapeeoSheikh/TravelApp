import 'package:flutter/material.dart';

class BarPage extends StatelessWidget {
  const BarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Image(
            image: AssetImage("img/bar.png"),
          ),
        ),
      ),
    );
  }
}
