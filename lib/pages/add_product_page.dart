import 'dart:io';
import 'package:el_club/pages/home_page.dart';
import 'package:el_club/services/select_image.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  //Estado de los RadioListTile

  String typeProduct = "";
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();

  File? imageToUpload;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        backgroundColor: Colors.black, //const Color.fromARGB(255, 70, 37, 11),
        elevation: 3,
        title: const Text(
          "Agregar Producto",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              //Nombre del Producto
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 5),
                    child: Text(
                      "Nombre del Producto",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null) {
                          print("error");
                        }
                      },
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: "ej: Café",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              //Descripción del Producto
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 5),
                    child: Text(
                      "Descripción del Producto",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null) {
                          print("error");
                        }
                      },
                      controller: _descriptionController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      textAlign: TextAlign.justify,
                      decoration: InputDecoration(
                        hintText: "ej: Este producto...",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 30,
              ),

              //Imagen del Producto
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Imagen del Producto",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () async {
                              final imagen = await getImage();
                              setState(() {
                                imageToUpload = File(imagen!.path);
                              });
                            },
                            child: Container(
                              height: 35,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.purple.shade600,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "Subir",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 182, 179, 179),
                          borderRadius: BorderRadius.circular(10)),
                      child: imageToUpload != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                imageToUpload!,
                                fit: BoxFit.fitWidth,
                              ),
                            )
                          : const Center(
                              child: Text(
                                "Imagen del Producto",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 30,
              ),

              //Precio del Producto
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Precio",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                        width: 180,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null) {
                              print("error");
                            }
                          },
                          controller: _priceController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "ej: 5000",
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              //Tipo de Producto
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Tipo de Producto",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 30),
                    child: Column(
                      children: [
                        RadioListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
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
                              print(value);
                            });
                          },
                        ),
                        RadioListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
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
                              print(value);
                            });
                          },
                        ),
                        RadioListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
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
                              print(value);
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 30,
              ),

              //Agregar y cancelar
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const HomePage()));
                      },
                      child: Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Center(
                          child: Text(
                            "Cancelar",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (typeProduct == "hd") {
                            Product aux = Product(
                                nameProduct: _nameController.text,
                                descriptionProduct: _descriptionController.text,
                                priceProduct: int.parse(_priceController.text),
                                pathImage: imageToUpload!.path,
                                ingredients: ["Agua", "Café", "Azucar"]);

                            hotDrinksList.add(aux);
                          }

                          if (typeProduct == "cd") {
                            Product aux = Product(
                                nameProduct: _nameController.text,
                                descriptionProduct: _descriptionController.text,
                                priceProduct: int.parse(_priceController.text),
                                pathImage: imageToUpload!.path,
                                ingredients: ["Agua", "Café", "Azucar"]);

                            coldDrinksList.add(aux);
                          }
                          if (typeProduct == "ck") {
                            Product aux = Product(
                                nameProduct: _nameController.text,
                                descriptionProduct: _descriptionController.text,
                                priceProduct: int.parse(_priceController.text),
                                pathImage: imageToUpload!.path,
                                ingredients: ["Agua", "Café", "Azucar"]);

                            cakeList.add(aux);
                          }
                        });
                        _nameController.clear();
                        _descriptionController.clear();
                        _priceController.clear();
                      },
                      child: Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Center(
                          child: Text(
                            "Agregar",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//TODO Faltan realizar validaciones cuando los campos son nulos
//TODO Se realizará el modulo para la subida de imagenes