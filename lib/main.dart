import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/apptext/largetext.dart';
import 'package:travelapp/apptext/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List image = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView.builder(
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
                child: Container(
                  margin:
                      const EdgeInsets.only(top: 150.0, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LargeText(title: "Travel"),
                          AppText(size: 30, title: "Enthusiast"),
                          SizedBox(
                            height: 21,
                          ),
                          Container(
                            /**/
                            width: 250,
                            child: Column(
                              children: [
                                AppText(
                                    size: 11,
                                    title:
                                        "Travel is the only thing you buy that makes you richer – Anonymous. The journey is my home. Muriel Rukeyser.To travel is to live "),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                              padding: const EdgeInsets.only(left: 6),
                              width: 110,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Adventure",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    color: Colors.white,
                                  ),
                                ],
                              ))
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
                                    ? Colors.deepPurple
                                    : Colors.deepPurple.withOpacity(0.3),
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
            }),
      ),
    );
  }
}
