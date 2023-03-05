import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/details_page.dart';

class ContentOfAlertDialog extends StatelessWidget {
  const ContentOfAlertDialog({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 248, 188, 114),
      ),
      child: ListView.builder(
        //itemCount: widget.product.ingredients.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              /*" ${index + 1}. ${widget.product.ingredients[index]}"*/ "",
              style: GoogleFonts.signikaNegative(fontSize: 30),
            ),
          );
        },
      ),
    );
  }
}
