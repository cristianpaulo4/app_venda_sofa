import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem1 extends StatelessWidget {
  final String uri;

  final Function onPressed;
  const CardItem1({Key key, this.uri, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
              alignment: Alignment.center,
              height: 350,
              width: 240,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Chair',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '100+ Product',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Image.asset(
              uri,
              width: 250,
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
