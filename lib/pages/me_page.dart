import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/apptext/largetext.dart';
import 'package:travelapp/apptext/text.dart';

class MePage extends StatelessWidget {
  const MePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 160, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    title: "About",
                    color: Colors.white,
                  ),
                  AppText(
                    title: " _________",
                    color: Colors.orange,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LargeText(
                    title: "Learn More About me",
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(""),
                      ),
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      LargeText(
                        title: "Flutter Developer",
                        color: Colors.orange,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              AppText(
                                title: "Muhammad Rameez",
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              AppText(
                                title: "+92 323 4879062",
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              AppText(
                                title: "Aug 10, 2002",
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              AppText(
                                title: "Bachleor",
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              AppText(
                                title: "Lahore, Pakistan",
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              AppText(
                                title: "Flutter, dotNet",
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 150,
                                child: AppText(
                                  title:
                                      "Government College University, Lahore",
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Row(
                      //   children: [
                      //     Icon(
                      //       Icons.arrow_forward_ios,
                      //       color: Colors.orange,
                      //     ),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     AppText(
                      //       title: "Muhammad Rameez",
                      //       color: Colors.white,
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LargeText(
                    title: "Information",
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 400,
                    child: Column(
                      children: [
                        AppText(
                          title:
                              "I'm Muhammad Rameez. A CS 2nd year student at Government College University Lahore, Pakistan. I am a Flutter Evangelist. I am a Tech Guy, Technology Always Excite me to do more fun with Tech.",
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(
                          title:
                              "I am dotNet Developer by Field and Flutter Developer by Passion. Till now I have Learn Various Programming languages like C++, Java, C#, Dart and Html, Css, Bootstrap for Web frontend. I have being working with SQL for a long. I have worked as a UI Ux Designer at the start of my Bachelor Degree. I like Communities, Events and Hackathons.",
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
