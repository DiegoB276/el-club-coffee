import 'package:el_club/models/product.dart';
import 'package:el_club/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/coffee_item.dart';
import 'details_page.dart';

class CakePage extends StatefulWidget {
  const CakePage({super.key});

  @override
  State<CakePage> createState() => _CakePageState();
}

class _CakePageState extends State<CakePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 69, 43),
        elevation: 0,
        title: Text("Aperitivos", style: GoogleFonts.lilitaOne(fontSize: 30)),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: cakeList.length,
        itemBuilder: (BuildContext context, int index) {
          Product product = cakeList[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    product: product,
                  ),
                ),
              );
            },
            child: CoffeeItem(
                nameProduct: product.nameProduct,
                descriptionProduct: product.descriptionProduct,
                priceProduct: product.priceProduct,
                pathImage: product.pathImage),
          );
        },
      ),
    );
  }
}
