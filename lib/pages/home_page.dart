import 'package:flutter/material.dart';
import 'package:travelapp/Myimg.dart';
import 'package:travelapp/Ui_Kit/colos.dart';
import 'package:travelapp/apptext/text.dart';

import '../routes/routes.dart';

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
    int myindex;
    return Container(
      margin: EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.welcome);
                },
              ), //==== Top icon and avatar
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.mepage);
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://res.cloudinary.com/practicaldev/image/fetch/s--WI8qnpv3--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/834351/68ddcc8f-45e5-4874-85a2-3c3a34de7106.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                ),
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
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                  Tab(text: "Freshing"),
                  Tab(text: "Fealing"),
                  Tab(text: "Discover"),
                  Tab(text: "Category"),
                  Tab(text: "Favrioute"),
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              //======= ListView builder for Tab 01 ============
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("img/" + MyImg.bgimg[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),

              //======= ListView builder for Tab 02 ============
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image:
                              AssetImage("img/" + MyImg.bgimg[index + 1 * 2]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image:
                              AssetImage("img/" + MyImg.bgimg[index + 2 * 2]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("img/" + MyImg.bgimg[index + 1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("img/" + MyImg.bgimg[index + 3]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                    child: Container(
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
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.details);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("img/" + MyImg.bgimg[6]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ]),
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore more",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "See all",
                style: TextStyle(fontSize: 15, color: AppColor.textColor1),
              ),
            ],
          ), //===== Explore more
          SizedBox(
            height: 5,
          ),
          Container(
            height: 80,
            margin: EdgeInsets.only(top: 30),
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: AppText(
                        title: images.values.elementAt(index),
                        size: 14,
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
