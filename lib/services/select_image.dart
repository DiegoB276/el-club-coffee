import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//Subir una imagen desde galería
Future<XFile?> getImage() async {
  late ImagePicker picker = ImagePicker();
  final image = await picker.pickImage(source: ImageSource.gallery);

  return image;
}
