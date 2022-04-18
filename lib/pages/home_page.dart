import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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
          Container(
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspirations"),
                  Tab(text: "Discover"),
                ]),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              Text("data1"),
              Text("data2"),
              Text("dat3"),
            ]),
          )
        ],
      ),
    );
  }
}
