import 'package:el_club/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/content_alert_dialog.dart';

// ignore: must_be_immutable
class DetailsPage extends StatefulWidget {
  Product product;
  DetailsPage({
    required this.product,
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  //Muestra una ventana de dialogo en la cual se encuentran los ingredientes.
  void showMyAlert(BuildContext context, Product product) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 243, 176, 95),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.local_restaurant_rounded),
              SizedBox(
                width: 5,
              ),
              Text(
                "INGREDIENTES",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ],
          ),

          content: ContentOfAlertDialog(
              widget:
                  widget), // <----Clase externa la cual contiene los ingredientes
        );
      },
      barrierColor: const Color.fromARGB(255, 163, 149, 127),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 206, 206),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 360,
                      child: ClipRRect(
                        child: Image.asset(
                          widget.product.pathImage,
                          //"assets/bebidas/hot_drinks/latte.jpg",
                          color: const Color.fromARGB(255, 145, 133, 119),
                          colorBlendMode: BlendMode.modulate,
                          fit: BoxFit.fitHeight,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 10,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const SizedBox(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    //right: 10,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    //color: Colors.orange,
                    child: Center(
                      child: Text(
                        //"Chocolate con Mavaviscos",
                        textAlign: TextAlign.start,
                        widget.product.nameProduct,
                        style: GoogleFonts.rowdies(
                            color: Colors.grey.shade800, fontSize: 50),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Text(
                    widget.product.descriptionProduct,
                    style: const TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 30,

                      //------------lista de ingredientes horizontal-------

                      //color: Colors.orange,
                      /*child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.product.ingredients.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              height: double.infinity,
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.brown.shade800,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      widget.product.ingredients[index],
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),*/
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "\$${widget.product.priceProduct.toString()}",
                        style:
                            const TextStyle(color: Colors.orange, fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //Boton flotante para ver los ingredientes
      floatingActionButton: InkWell(
        onTap: () => showMyAlert(context, widget.product),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 241, 175, 75),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.brown.shade300,
                  offset: Offset.zero,
                  blurRadius: 7,
                  spreadRadius: 3,
                  blurStyle: BlurStyle.normal)
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Ver Ingredientes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
