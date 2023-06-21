import "package:flutter/material.dart";
import 'package:flutter_application_1/donutApp/util/my_tab.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothiw_tab.dart';

class HomePge extends StatefulWidget {
  @override
  State<HomePge> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: "assets/donuts/donut.png",
    ),
    MyTab(
      iconPath: "assets/donuts/burger.png",
    ),
    MyTab(
      iconPath: "assets/donuts/smoothie.png",
    ),
    MyTab(
      iconPath: "assets/donuts/pancakes.png",
    ),
    MyTab(
      iconPath: "assets/donuts/pizza.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey[800],
                    size: 36,
                  ),
                  onPressed: () {},
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.grey[800],
                      size: 36,
                    ),
                    onPressed: () {},
                  ),
                )
              ]),
          body: Column(children: [
            //Texto
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    "I want to eat",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    " EAT",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            //tab bar
            TabBar(tabs: myTabs),

            //tab bar view
            Expanded(
              child: TabBarView(
                children: [

                  DonutTab(),

                  BurgeTab(),

                  SmoothieTab(),

                  PancakeTab(),

                  PizzaTab(),






                ],
              ),
            ),
          ])),
    );
  }
}
