import 'package:donut_app_8sc/tab/donut_tab.dart';
import 'package:donut_app_8sc/tab/burger_tab.dart';
import 'package:donut_app_8sc/tab/smoothie_tab.dart';
import 'package:donut_app_8sc/tab/pancake_tab.dart';
import 'package:donut_app_8sc/tab/pizza_tab.dart';

import 'package:donut_app_8sc/utils/my_tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    // Donut Tab
    const MyTab(
      iconPath: 'lib/icons/donut.png',
      tabName: 'Donuts',
    ),
    // Burger Tab
    const MyTab(
      iconPath: 'lib/icons/burger.png',
      tabName: 'Burgers',
    ),
    // Smoothie Tab
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
      tabName: 'Smoothies',
    ),
    // Pancake Tab
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
      tabName: 'Pancakes',
    ),
    // Pizza Tab
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
      tabName: 'Pizzas',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.person,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // 1. texto principal
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            // 2. Pestañas
            TabBar(
              tabs: myTabs,
              labelColor: Colors.black, // Color cuando está seleccionado
              unselectedLabelColor: Colors.grey, // Color cuando no está seleccionado
              indicatorColor: Colors.black, // Color del indicador
              indicatorWeight: 3, // Grosor del indicador
            ),

            // 3. Contenido de las pestañas (aquí irá tu TabBarView)
            Expanded(
              child: TabBarView(
                children: [
                  // Aquí van los contenidos de cada pestaña
                  DonutTab(), // Donuts
                  BurgerTab(), // Burgers
                  SmoothieTab(), // Smoothies
                  PanCakeTab(), // Pancakes
                  PizzaTab(), // Pizzas
                ],
              ),
            ),

            // 4. Carrito (aquí puedes agregar tu botón de carrito)
          ],
        ),
      ),
    );
  }
}