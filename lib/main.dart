import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/details.dart';
import 'package:travelapp/pages/main_page.dart';
import 'package:travelapp/pages/me_page.dart';
import 'package:travelapp/routes/routes.dart';

import 'WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyRoutes.welcome: (context) => WelcomePage(),
        MyRoutes.mainpage: (context) => MainPage(),
        MyRoutes.details: (context) => DetailsPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MePage(),
      ),
    );
  }
}
