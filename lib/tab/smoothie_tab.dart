import 'package:donut_app_8sc/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  SmoothieTab({super.key});

  //List of donuts
  final List smoothieOnSale = [
    // donutFlavour, donutPrice, donutColor, donutImagePath, donutProvider
    ['Arandano', '100', Colors.brown, "lib/imagessmoothie/Arandano.png", 'Starbucks'],
    ['Brocoly', '89', Colors.red, "lib/imagessmoothie/Brocoly.png", 'Krispy Kreme'],
    ['Caramelo', '95', Colors.blue, "lib/imagessmoothie/Caramelo.png", 'Dunkin Donuts'],
    ['Chamoy', '50', Colors.purple, "lib/imagessmoothie/Chamoy.png", 'Oxxo'],

    ['Chaya', '100', Colors.brown, "lib/imagessmoothie/Chaya.png", 'Starbucks'],
    ['Strawberry', '89', Colors.red, "lib/imagessmoothie/Fresa.png", 'Krispy Kreme'],
    ['Sandia', '95', Colors.blue, "lib/imagessmoothie/Sandia.png", 'Dunkin Donuts'],
    ['Grape', '50', Colors.purple, "lib/imagessmoothie/Uva.png", 'Oxxo'],
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
        itemCount: smoothieOnSale.length ,
      //lo que se va a construir en el grids
      itemBuilder: (context, index){
        return SmoothieTile(
          smoothieFlavour: smoothieOnSale[index][0],
          smoothiePrice: smoothieOnSale[index][1],
          smoothieColor: smoothieOnSale[index][2],
          smoothieImagePath: smoothieOnSale[index][3],
          smoothieProvider: smoothieOnSale[index][4],
        );
      }
    );
  }
}