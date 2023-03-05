import 'package:flutter/material.dart';
import 'package:el_club/models/data_base_helper.dart';
import 'package:el_club/models/product.dart';
import 'package:el_club/widget/my_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/coffee_item.dart';
import 'details_page.dart';

class ColdDrinksPage extends StatefulWidget {
  const ColdDrinksPage({super.key});

  @override
  State<ColdDrinksPage> createState() => _ColdDrinksPage();
}

class _ColdDrinksPage extends State<ColdDrinksPage> {
  DataHelper? dataHelper;
  late Future<List<Product>> dataList;

  @override
  void initState() {
    super.initState();
    dataHelper = DataHelper();
    _loadData();
  }

  _loadData() async {
    dataList = dataHelper!.getAllColdDrinks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 69, 43),
        elevation: 0,
        title:
            Text("Bebidas Frias", style: GoogleFonts.lilitaOne(fontSize: 30)),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: FutureBuilder(
        future: dataList,
        builder: (context, AsyncSnapshot<List<Product>> snapshot) {
          if (!snapshot.hasData || snapshot.data == null) {
            return const CircularProgressIndicator();
          } else if (snapshot.data!.isEmpty) {
            return const Center(
              child: Text("No hay productos"),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                int idProduct = snapshot.data![index].id!.toInt();
                String nameProduct = snapshot.data![index].name!.toString();
                String descriptionProduct =
                    snapshot.data![index].description!.toString();
                int priceProduct = snapshot.data![index].price!.toInt();
                Product product = snapshot.data![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(product: product),
                      ),
                    );
                  },
                  child: CoffeeItem(
                    key: ValueKey<int>(idProduct),
                    nameProduct: nameProduct,
                    descriptionProduct: descriptionProduct,
                    priceProduct: priceProduct,
                    deleteTask: ((p0) {
                      setState(
                        () {
                          dataHelper!.deleteProduct(idProduct);
                          dataList = dataHelper!.getAllColdDrinks();
                          snapshot.data!.remove(snapshot.data![index]);
                        },
                      );
                    }),

                    //pathImage: product.pathImage,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
