import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavour;
  final String smoothiePrice;
  final dynamic smoothieColor;
  final String smoothieImagePath;
  final String smoothieProvider;

  const SmoothieTile({super.key, required this.smoothieFlavour, required this.smoothiePrice, required this.smoothieColor, required this.smoothieImagePath, required this.smoothieProvider});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration:
        BoxDecoration(
          color:smoothieColor[50],
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
                    color: smoothieColor[100],
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
                    "\$$smoothiePrice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:  18,
                      color:  smoothieColor[800]
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
                  child: Image.asset(smoothieImagePath),
                ),
                //nombre de la dona
                Text(smoothieFlavour,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                //tienda de la dona
                Text(smoothieProvider, style: TextStyle(color: Colors.grey[600])),
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