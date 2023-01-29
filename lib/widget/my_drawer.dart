import 'package:el_club/pages/cakes_page.dart';
import 'package:el_club/pages/home_page.dart';
import 'package:flutter/material.dart';

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
            leading: const Icon(Icons.coffee),
            title: Text(
              "Bebidas",
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