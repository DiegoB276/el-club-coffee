class Product {
  String nameProduct;
  String descriptionProduct;
  int priceProduct;
  String pathImage;
  List<String> ingredients;
  Product(
      {required this.nameProduct,
      required this.descriptionProduct,
      required this.priceProduct,
      required this.pathImage,
      required this.ingredients});

  Map<String, dynamic> toMap() {
    return {
      'nameProduct': nameProduct,
      'descriptionProduct': descriptionProduct,
      'priceProduct': priceProduct
    };
  }
}

List<Product> hotDrinksList = [
  Product(
      nameProduct: "Americano",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/bebidas/hot_drinks/americano.jpg",
      ingredients: ["Agua", "Café", "Azucar"]),
  Product(
      nameProduct: "Capuccino",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/bebidas/hot_drinks/capuccino.jpg",
      ingredients: ["Leche Espumosa", "Leche", "Café"]),
  Product(
      nameProduct: "Latte",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 5000,
      pathImage: "assets/bebidas/hot_drinks/latte.jpg",
      ingredients: ["Leche Espumosa", "Café", "Leche", "Canela"]),
  Product(
      nameProduct: "Macchiato",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 6500,
      pathImage: "assets/bebidas/hot_drinks/macchiato.jpg",
      ingredients: [
        "Leche Caliente",
        "Cafe",
        "Leche Espumosa",
        "Café en Polvo"
      ]),
  Product(
      nameProduct: "Moka",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 4500,
      pathImage: "assets/bebidas/hot_drinks/mocha.jpeg",
      ingredients: ["Canela", "Cafe", "Leche Espumosa"]),
  Product(
      nameProduct: "Espresso",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 5000,
      pathImage: "assets/bebidas/hot_drinks/espresso.jpg",
      ingredients: ["Agua Caliente", "Café Puro"]),
  Product(
      nameProduct: "Chocolate",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 6000,
      pathImage: "assets/bebidas/hot_drinks/choco_malva.jpg",
      ingredients: ["Leche", "Chocolate", "Malvaviscos", "Azucar"]),
  Product(
      nameProduct: "Tea",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/bebidas/hot_drinks/tea.jpg",
      ingredients: ["Agua", "Tea verde"])
];

List<Product> coldDrinksList = [
  Product(
      nameProduct: "Café Helado",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/bebidas/cold_drinks/coffee_cold.jpg",
      ingredients: ["Agua", "Café", "Hielo", "Leche"]),
  Product(
      nameProduct: "Dalgona",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/bebidas/cold_drinks/dalgona.jpg",
      ingredients: ["Crema de Café", "Leche"]),
  Product(
      nameProduct: "Frappe",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 5000,
      pathImage: "assets/bebidas/cold_drinks/frappe.png",
      ingredients: [
        "Leche",
        "Café",
        "Crema Chantillí",
        "Dulce de Café",
        "Palitos Piazza"
      ]),
  Product(
      nameProduct: "Frappe de Oreo",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 6500,
      pathImage: "assets/bebidas/cold_drinks/frappe_oreo.jpg",
      ingredients: ["Leche", "Galleta Oreo", "Crema Chantillí"]),
  Product(
      nameProduct: "Malteada de Chocolate",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 4500,
      pathImage: "assets/bebidas/cold_drinks/malteada_chocolate.jpg",
      ingredients: [
        "Leche",
        "Chocolate Derretido",
        "Trozo de Chocolate",
        "Dulce de Fresa"
      ]),
  Product(
      nameProduct: "Smoothie de Fresa",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 5000,
      pathImage: "assets/bebidas/cold_drinks/smoothie_fresa.jpeg",
      ingredients: ["Hielo", "Leche", "Jugo de Fresa", "Fresas", "Banano"]),
  Product(
      nameProduct: "Smoothie de Mango",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 6000,
      pathImage: "assets/bebidas/cold_drinks/smoothie_mango.jpeg",
      ingredients: ["Hielo", "Pulpa de Mango"]),
  Product(
      nameProduct: "Smoothie de Mora",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/bebidas/cold_drinks/smoothie_mora.jpg",
      ingredients: ["Hielo", "Pulpa de Mora", "Mora", "Banano"])
];

List<Product> cakeList = [
  Product(
      nameProduct: "Pastel de Crema de Café",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/cakes/crema_cafe.jpg",
      ingredients: ["Huevo", "Harina", "Chocolate", "Cafe", "Mantequilla"]),
  Product(
      nameProduct: "Tiramisú",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/cakes/tiramisu.jpg",
      ingredients: ["Café", "Limon", "Galleta", "Queso Crema"]),
  Product(
      nameProduct: "Pastel de Chocolate con Pistachos",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 5000,
      pathImage: "assets/cakes/chocolate_pistachos.jpg",
      ingredients: [
        "Harina",
        "Huevos",
        "Mantequilla",
        "Chocolate",
        "Pistachos"
      ]),
  Product(
      nameProduct: "Postre de Quesillo",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 6500,
      pathImage: "assets/cakes/quesillo.jpg",
      ingredients: ["Azucar", "Huevos", "Vino"]),
  Product(
      nameProduct: "Brownie",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 4500,
      pathImage: "assets/cakes/brownie.jpg",
      ingredients: ["Chocolate", "Crema de Vainilla", "Crema Chantillí"]),
  Product(
      nameProduct: "Postre de Limón",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 5000,
      pathImage: "assets/cakes/limon.jpeg",
      ingredients: ["Limón", "Galleta", "Queso Crema"]),
  Product(
      nameProduct: "Postre de Vainilla",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 6000,
      pathImage: "assets/cakes/vainilla.jpg",
      ingredients: [
        "Harina",
        "Huevo",
        "Sal",
        "Azucar",
        "Huevos",
        "Mantequilla",
        "Arequipe",
        "Maní"
      ]),
  Product(
      nameProduct: "Postre Tres Leches",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/cakes/tres_leches.jpg",
      ingredients: [
        "Harina",
        "Huevo",
        "Sal",
        "Azucar",
        "Huevos",
        "Mantequilla",
        "Leche Condensada"
      ]),
  Product(
      nameProduct: "Almojabana",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/cakes/almojabana.jpg",
      ingredients: ["Harina", "Queso", "Huevos", "Sal"]),
  Product(
      nameProduct: "Croissant",
      descriptionProduct:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      priceProduct: 3500,
      pathImage: "assets/cakes/croissant.jpg",
      ingredients: ["jamón", "Queso", "Harina", "Huevos"]),
];
