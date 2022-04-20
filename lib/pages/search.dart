import 'package:flutter/material.dart';
import 'package:travelapp/Ui_Kit/colos.dart';

import '../apptext/text.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 120),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.orange)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        AppText(
                          title: "Search here ",
                          color: AppColor.textColor1.withOpacity(0.4),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Icon(
                          Icons.search_outlined,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 250,
                    width: 200,
                    child: Image(
                        image: AssetImage(
                      "img/search.png",
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
