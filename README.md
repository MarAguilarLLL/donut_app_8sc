# 🍩 Flutter Donut Shop App

A modern and colorful *Flutter UI project* inspired by a Dribbble design, featuring a smooth *tab-based navigation* between multiple food categories such as donuts, burgers, smoothies, pancakes, and pizzas.  
Each tab displays a beautiful grid of products with dynamic colors, prices, and provider details. 🧁🍔🍹🥞🍕

---

## ✨ Features

- 🧭 *Tab Navigation:* Switch between different food categories (Donuts, Burgers, Smoothies, Pancakes, Pizzas).  
- 🍩 *Dynamic Grid:* Each tab shows a responsive grid of products built with GridView.builder.  
- 🎨 *Color-coded Tiles:* Each product tile adapts its color palette to match its flavor.  
- 💖 *Interactive Buttons:* Includes “Add” and “Favorite” actions for each product.  
- 👤 *Modern AppBar:* Clean header with menu and profile icons.  

---

## 🧱 Main Widgets

| Widget | Description |
|--------|--------------|
| *HomePage* | Main stateful widget managing the tab controller and navigation between food categories. |
| *DonutTab* | Displays the donut products inside a grid view. |
| *MyTab* | Custom widget representing the icon and title of each tab. |
| *DonutTile* | Custom reusable tile showing the product image, price, name, supplier, and action buttons. |

---

## 🧰 Technologies Used

- 💙 *Flutter* (Dart SDK)
- 🧩 *Material Design Components*
- 🖼️ *Image Assets* for product visualization
- 🎨 *Custom Widgets* and *SliverGridDelegate* for layout control

---

## 📂 Project Structure
- lib/
- ├── main.dart # Entry point
- ├── screens/
- | ├── home_page.dart # Home page with tab navigation
- ├── tab/
- │ ├── donut_tab.dart # Donut tab screen
- │ ├── burger_tab.dart # Burger tab screen
- │ ├── smoothie_tab.dart # Smoothie tab screen
- │ ├── pancakes_tab.dart # Pancakes tab screen
- │ └── pizza_tab.dart # Pizza tab screen
- ├── utils/
- │ ├── donut_tile.dart # Custom widget for product tiles
- │ └── my_tab.dart # Custom widget for tabs
- ├── icons/ # PNG icons for each tab
- └── images/ # Product images (donuts, burgers, etc.)


## Information
- Aplicaiones moviles.
- Teacher: Rodrigo Fidel Gaxiola Sosa.
