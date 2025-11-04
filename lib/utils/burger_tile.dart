import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavour;
  final String burgerPrice;
  final dynamic burgerColor;
  final String burgerImagePath;
  final String burgerProvider;

  const BurgerTile({super.key, required this.burgerFlavour, required this.burgerPrice, required this.burgerColor, required this.burgerImagePath, required this.burgerProvider});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration:
        BoxDecoration(
          color:burgerColor[50],
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
                    color: burgerColor[100],
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
                    "\$$burgerPrice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:  18,
                      color:  burgerColor[800]
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
                  child: Image.asset(burgerImagePath),
                ),
                //nombre de la dona
                Text(burgerFlavour,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                //tienda de la dona
                Text(burgerProvider, style: TextStyle(color: Colors.grey[600])),
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