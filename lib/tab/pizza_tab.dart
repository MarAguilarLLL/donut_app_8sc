import 'package:donut_app_8sc/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  PizzaTab({super.key});

  //List of donuts
  final List smoothieOnSale = [
    // donutFlavour, donutPrice, donutColor, donutImagePath, donutProvider
    ['Ajonjoli', '100', Colors.brown, "lib/imagespizza/ajonjoli.png", 'Superpizza'],
    ['Extra Pepe', '89', Colors.red, "lib/imagespizza/extrapeperoni.png", 'Pequeño Cesar'],
    ['Mixta', '95', Colors.blue, "lib/imagespizza/mixta.png", 'Mesinas'],
    ['Peperoni', '50', Colors.purple, "lib/imagespizza/peperoni.png", 'Dominos'],

    ['Extra Queso', '100', Colors.brown, "lib/imagespizza/quesoextra.png", 'Pizza Hut'],
    ['Salchicha', '89', Colors.red, "lib/imagespizza/salchicha.png", 'Papa Jhons'],
    ['Tomatate', '95', Colors.blue, "lib/imagespizza/tomatada.png", 'Pizzeria Fifi'],
    ['Verduras', '50', Colors.purple, "lib/imagespizza/Verduras.png", 'Italia'],
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
        return PizzaTile(
          pizzaFlavour: smoothieOnSale[index][0],
          pizzaPrice: smoothieOnSale[index][1],
          pizzaColor: smoothieOnSale[index][2],
          pizzaImagePath: smoothieOnSale[index][3],
          pizzaProvider: smoothieOnSale[index][4],
        );
      }
    );
  }
}