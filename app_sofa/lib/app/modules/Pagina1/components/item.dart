import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item extends StatelessWidget {
  final String uri;
  final double valor;
  final Function onPressed;

  const Item({Key key, this.uri, this.valor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: uri,
              child: Image.asset(
                uri,
                height: 100,
                width: 120,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              'Chair',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              '\$ ${150.00}',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontSize: 15,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
