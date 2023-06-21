import "package:flutter/material.dart";

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //DonutTab({Key? key}) : super(key: key);

  List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "assets/donuts/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "assets/donuts/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "assets/donuts/grape_donut.png"],
    ["Choco", "95", Colors.brown, "assets/donuts/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnSale.length,
        padding: EdgeInsets.all(12.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            imageName: donutsOnSale[index][3],
          );
        });
  }
}
