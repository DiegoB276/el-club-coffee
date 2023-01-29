import 'package:el_club/models/product.dart';
import 'package:el_club/widget/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/coffee_item.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 69, 43),
        elevation: 0,
        title: Text("Bebidas", style: GoogleFonts.lilitaOne(fontSize: 30)),
        centerTitle: true,
        bottom: TabBar(
          indicatorWeight: 3,
          indicatorColor: Colors.orange.shade400,
          controller: _tabController,
          tabs: const [
            Tab(
              text: "Bebidas Calientes",
            ),
            Tab(
              text: "Bebidas Frias",
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          SizedBox(
            child: ListView.builder(
              itemCount: hotDrinksList.length,
              itemBuilder: (BuildContext context, int index) {
                Product product = hotDrinksList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(product: product),
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
          ),
          SizedBox(
            child: ListView.builder(
              itemCount: coldDrinksList.length,
              itemBuilder: (BuildContext context, int index) {
                Product product = coldDrinksList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(product: product),
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
          ),
        ],
      ),
    );
  }
}



/*body: ListView.builder(
          itemCount: hotDrinksList.length,
          itemBuilder: (BuildContext context, int index) {
            Product product = hotDrinksList[index];
            return CoffeeItem(
                nameProduct: product.nameProduct,
                descriptionProduct: product.descriptionProduct,
                priceProduct: product.priceProduct,
                pathImage: product.pathImage);
          },
        ),*/