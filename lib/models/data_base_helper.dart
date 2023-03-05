import 'package:el_club/models/product.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;

class DataHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initiateDatabase();
    return null;
  }

  initiateDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'ProductDB.db');
    var db = await openDatabase(path, version: 1, onCreate: _createDatabase);
    return db;
  }

  //CREATE A DATABASE
  _createDatabase(Database db, int version) async {
    await db.execute(
        'CREATE TABLE products(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, description TEXT, price INTEGER, type TEXT)');
  }

  //ADD A PRODUCT TO TABLE PRODUCTS
  Future<Product> addProduct(Product product) async {
    var dbClient = _db;
    dbClient?.insert('products', product.toMap());
    return product;
  }

  //GET ALL LIST OF PRODUCT
  Future<List<Product>> getAllProducts() async {
    await db;
    final List<Map<String, dynamic>> queryResult =
        await _db!.rawQuery('SELECT * FROM products');
    return queryResult.map((e) => Product.fromMap(e)).toList();
  }

  //UPDATE A PRODUCT
  Future<int> updateProduct(Product product) async {
    var dbClient = _db;
    return await dbClient!.update('products', product.toMap(),
        where: 'id = ?',
        whereArgs: [product.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  //DELETE A PRODUCT
  Future<int> deleteProduct(int id) async {
    var dbClient = _db;
    return dbClient!.delete('products', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Product>> getAllCakes() async {
    final db = _db;
    final res =
        await db!.query('products', where: 'type = ?', whereArgs: ['ck']);
    return res.isNotEmpty
        ? res.map((product) => Product.fromMap(product)).toList()
        : [];
  }

  Future<List<Product>> getAllHotDrinks() async {
    final db = _db;
    final res =
        await db!.query('products', where: 'type = ?', whereArgs: ['hd']);
    return res.isNotEmpty
        ? res.map((product) => Product.fromMap(product)).toList()
        : [];
  }

  Future<List<Product>> getAllColdDrinks() async {
    final db = _db;
    final res =
        await db!.query('products', where: 'type = ?', whereArgs: ['cd']);
    return res.isNotEmpty
        ? res.map((product) => Product.fromMap(product)).toList()
        : [];
  }
}
