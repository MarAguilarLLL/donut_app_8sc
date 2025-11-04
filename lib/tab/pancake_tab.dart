import 'package:donut_app_8sc/utils/pancake_tile.dart';
import 'package:flutter/material.dart';

class PanCakeTab extends StatelessWidget {
  PanCakeTab({super.key});

  //List of donuts
  final List pancakeOnSale = [
    // donutFlavour, donutPrice, donutColor, donutImagePath, donutProvider
    ['Normales', '100', Colors.brown, "lib/imagespancake/plane.png", 'IHop'],
    ['Platano', '89', Colors.red, "lib/imagespancake/banana.png", 'Krispy Kreme'],
    ['Chocolate', '95', Colors.blue, "lib/imagespancake/chocolate.png", 'Casa de los abuelos'],
    ['Fresa', '50', Colors.purple, "lib/imagespancake/strawberry.png", 'Denis'],

    ['Normales', '100', Colors.brown, "lib/imagespancake/plane.png", 'IHop'],
    ['Platano', '89', Colors.red, "lib/imagespancake/banana.png", 'Casa de los abuelos'],
    ['Chocolate', '95', Colors.blue, "lib/imagespancake/chocolate.png", 'Dunkin Donuts'],
    ['Fresa', '50', Colors.purple, "lib/imagespancake/strawberry.png", 'Denis'],
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
        itemCount: pancakeOnSale.length ,
      //lo que se va a construir en el grids
      itemBuilder: (context, index){
        return PancakeTile(
          pancakeFlavour: pancakeOnSale[index][0],
          pancakePrice: pancakeOnSale[index][1],
          pancakeColor: pancakeOnSale[index][2],
          pancakeImagePath: pancakeOnSale[index][3],
          pancakeProvider: pancakeOnSale[index][4],
        );
      }
    );
  }
}