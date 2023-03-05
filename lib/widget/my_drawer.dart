import 'package:el_club/pages/add_product_page.dart';
import 'package:el_club/pages/cakes_page.dart';
import 'package:el_club/pages/cold_drinks_page.dart';
import 'package:el_club/pages/hot_drinks_page.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          DrawerHeader(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu_book,
                    color: Colors.orange.shade500,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "M E N U",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            leading: Icon(
              Icons.category,
              color: Colors.orange.shade500,
            ),
            title: Text(
              "Todos los Productos",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HotDrinksPage()),
              );
            },
            leading: const Icon(Icons.coffee),
            title: Text(
              "Bebidas Calientes",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const ColdDrinksPage()),
              );
            },
            leading: const Icon(Icons.wine_bar),
            title: Text(
              "Bebidas Frias",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const CakePage()),
              );
            },
            leading: const Icon(Icons.cake_rounded),
            title: Text(
              "Aperitivos",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const AddProductPage(
                      productId: null,
                      productName: null,
                      productDescription: null,
                      productPrice: null,
                      productType: null),
                ),
              );
            },
            leading: const Icon(Icons.add_shopping_cart_rounded),
            iconColor: Colors.orange.shade500,
            title: Text(
              "Agregar Producto",
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: Text(
              "Calle 0 #2A-23 Pamplona - Colombia",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
          )
        ],
      ),
    );
  }
}
