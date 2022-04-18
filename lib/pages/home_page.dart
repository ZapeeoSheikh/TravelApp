import 'package:flutter/material.dart';
import 'package:travelapp/Ui_Kit/colos.dart';
import 'package:travelapp/apptext/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 7, vsync: this);
    var images = {
      "balloning.png": "Balloning",
      "hiking.png": "Hiking",
      "kayaking.png": "Kayaking",
      "snorkling.png": "Snorkling",
    };
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container()),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: TabBar(
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspirations"),
                  Tab(text: "Discover"),
                  Tab(text: "Inspirations"),
                  Tab(text: "Discover"),
                  Tab(text: "Discover"),
                  Tab(text: "Discover"),
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Text("data2"),
              Text("data2"),
              Text("data2"),
              Text("data2"),
              Text("data2"),
              Text("dat3"),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore more",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Container(
            height: 80,
            margin: EdgeInsets.only(top: 20),
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                "img/" + images.keys.elementAt(index)),
                            fit: BoxFit.cover),
                        //color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: AppText(
                        title: images.values.elementAt(index),
                        color: AppColor.mainColor.withOpacity(0.5),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
