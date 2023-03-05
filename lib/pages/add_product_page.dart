import 'package:el_club/models/data_base_helper.dart';
import 'package:el_club/widget/my_drawer.dart';
//import 'package:el_club/services/select_image.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class AddProductPage extends StatefulWidget {
  final int? productId;
  final String? productName;
  final String? productDescription;
  final int? productPrice;
  final String? productType;
  const AddProductPage(
      {super.key,
      required this.productId,
      required this.productName,
      required this.productDescription,
      required this.productPrice,
      required this.productType});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  //Estado de los RadioListTile

  String typeProduct = "";
  //File? imageToUpload;

  DataHelper? _dataHelper;
  late Future<List<Product>> dataList;
  final _fromKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _dataHelper = DataHelper();
    loadData();
  }

  loadData() async {
    _dataHelper!.getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final descriptionController = TextEditingController();
    final priceController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Añadir Producto"),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _fromKey,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tipo de Producto",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RadioListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //activeColor: Colors.orange,
                        title: const Text(
                          "Bebidas Calientes",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        activeColor: Colors.pink.shade300,
                        value: "hd",
                        groupValue: typeProduct,
                        onChanged: (value) {
                          setState(() {
                            typeProduct = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        title: const Text(
                          "Bebidas Frías",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        activeColor: Colors.pink.shade300,
                        value: "cd",
                        groupValue: typeProduct,
                        onChanged: (value) {
                          setState(() {
                            typeProduct = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        title: const Text(
                          "Aperitivos",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        activeColor: Colors.pink.shade300,
                        value: "ck",
                        groupValue: typeProduct,
                        onChanged: (value) {
                          setState(() {
                            typeProduct = value.toString();
                          });
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Nombre del Producto",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Nombre",
                      labelStyle: TextStyle(color: Colors.grey.shade600),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Descripción del Producto",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 10,
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: "Descripción",
                      labelStyle: TextStyle(color: Colors.grey.shade600),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Precio del Producto",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: priceController,
                    decoration: InputDecoration(
                      labelText: "Precio",
                      labelStyle: TextStyle(color: Colors.grey.shade600),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (_fromKey.currentState!.validate()) {
                            _dataHelper!.addProduct(
                              Product(
                                  id: null,
                                  name: nameController.text,
                                  description: descriptionController.text,
                                  price: int.parse(priceController.text),
                                  type: typeProduct),
                            );
                          }

                          nameController.clear();
                          descriptionController.clear();
                          priceController.clear();
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "Agregar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            nameController.clear();
                            descriptionController.clear();
                            priceController.clear();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.red.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Cancelar",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//TODO Faltan realizar validaciones cuando los campos son nulos
//TODO Se realizará el modulo para la subida de imagenes