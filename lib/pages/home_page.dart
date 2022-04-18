import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80, left: 20, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                size: 28,
              ),
              Container(
                height: 40,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Discover",
              ),
              Expanded(child: Container()),
            ],
          ),
          TabBar(tabs: [
            Text("Places"),
            Text("Inspiration"),
            Text("Discover"),
          ]),
          TabBarView(children: [
            Text("data1"),
            Text("data2"),
            Text("dat3"),
          ])
        ],
      ),
    );
  }
}
