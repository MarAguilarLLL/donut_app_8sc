import 'package:donut_app_8sc/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  //List of donuts
  final List donutOnSale = [
    // donutFlavour, donutPrice, donutColor, donutImagePath, donutProvider
    ['Chocolate', '100', Colors.brown, "lib/images/chocolate_donut.png", 'Starbucks'],
    ['Strawberry', '89', Colors.red, "lib/images/strawberry_donut.png", 'Krispy Kreme'],
    ['Ice Cream', '95', Colors.blue, "lib/images/icecream_donut.png", 'Dunkin Donuts'],
    ['Grape', '50', Colors.purple, "lib/images/grape_donut.png", 'Oxxo'],

    ['Chocolate', '100', Colors.brown, "lib/images/chocolate_donut.png", 'Starbucks'],
    ['Strawberry', '89', Colors.red, "lib/images/strawberry_donut.png", 'Krispy Kreme'],
    ['Ice Cream', '95', Colors.blue, "lib/images/icecream_donut.png", 'Dunkin Donuts'],
    ['Grape', '50', Colors.purple, "lib/images/grape_donut.png", 'Oxxo'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //se encarga de acomodar elementos dentro del grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //numero de columnas
        crossAxisCount:2,
        //Aspect Ratio
        childAspectRatio: 1 / 1.5,
        ),
        //Cuantos elemetnos
        itemCount: donutOnSale.length ,
      //lo que se va a construir en el grids
      itemBuilder: (context, index){
        return DonutTile(
          donutFlavour: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
        );
      }
    );
  }
}