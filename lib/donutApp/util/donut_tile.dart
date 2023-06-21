import "package:flutter/material.dart";

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;
  final double borderRadius = 12;

  const DonutTile(
      {Key? key,
      required this.donutFlavor,
      required this.donutPrice,
      this.donutColor,
      required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: donutColor[100],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(borderRadius),
                            bottomLeft: Radius.circular(borderRadius))),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      "\$$donutPrice",
                      style: TextStyle(
                          color: donutColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
              child: Image.asset(imageName),
            ),

            Text(donutFlavor,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

            const SizedBox(height: 4),
            Text("Dunkins", style: TextStyle(color: Colors.grey[600])),
            //const SizedBox(height:12),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  Icon(Icons.add, color: Colors.grey[800]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
