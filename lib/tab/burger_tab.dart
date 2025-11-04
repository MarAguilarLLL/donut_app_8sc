import 'package:donut_app_8sc/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({super.key});

  //List of donuts
  final List burgerOnSale = [
    // donutFlavour, donutPrice, donutColor, donutImagePath, donutProvider
    ['Double Western Bacon', '100', Colors.brown, "lib/imagesburger/doble.png", 'Carls JR.'],
    ['Huevo', '89', Colors.red, "lib/imagesburger/egg.png", 'Mc. Donalds'],
    ['Black Death', '95', Colors.blue, "lib/imagesburger/nigga.png", 'Burger King'],
    ['Pitahaya', '50', Colors.purple, "lib/imagesburger/pitahaya.png", 'Don chuy'],

    ['Famous Star', '100', Colors.brown, "lib/imagesburger/single.png", 'Carls JR.'],
    ['Ultimate Burger', '89', Colors.red, "lib/imagesburger/ultimate.png", 'Don Chuy'],
    ['Double Again', '95', Colors.blue, "lib/imagesburger/doble.png", 'Carls JR.'],
    ['Huevos', '50', Colors.purple, "lib/imagesburger/egg.png", 'Mc. Donalds'],
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
        itemCount: burgerOnSale.length ,
      //lo que se va a construir en el grids
      itemBuilder: (context, index){
        return BurgerTile(
          burgerFlavour: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerColor: burgerOnSale[index][2],
          burgerImagePath: burgerOnSale[index][3],
          burgerProvider: burgerOnSale[index][4],
        );
      }
    );
  }
}