import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavour;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String pizzaImagePath;
  final String pizzaProvider;

  const PizzaTile({super.key, required this.pizzaFlavour, required this.pizzaPrice, required this.pizzaColor, required this.pizzaImagePath, required this.pizzaProvider});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration:
        BoxDecoration(
          color:pizzaColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              //Poner a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  padding: const EdgeInsets.symmetric(
                  vertical:8,
                  horizontal: 18,
                  ),
                  child: Text(
                    "\$$pizzaPrice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:  18,
                      color:  pizzaColor[800]
                    ),
                  ),
                ),
              ],
            ),
            //imagen de la dona
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 18,
                  ),
                  child: Image.asset(pizzaImagePath),
                ),
                //nombre de la dona
                Text(pizzaFlavour,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                //tienda de la dona
                Text(pizzaProvider, style: TextStyle(color: Colors.grey[600])),
                //botones
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Favorito
                      Icon(Icons.favorite, color:Colors.pink[400]),
                      //Agregar
                      TextButton(
                        onPressed: (){},
                        child: Text (
                          'Add',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            ),
                        ),
                      ),
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}