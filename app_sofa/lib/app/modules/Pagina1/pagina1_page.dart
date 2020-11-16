import 'package:app_sofa/app/modules/Pagina1/components/cardItem1.dart';
import 'package:app_sofa/app/modules/Pagina1/components/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pagina1_controller.dart';

class Pagina1Page extends StatefulWidget {
  final String title;
  const Pagina1Page({Key key, this.title = "Pagina1"}) : super(key: key);

  @override
  _Pagina1PageState createState() => _Pagina1PageState();
}

class _Pagina1PageState extends ModularState<Pagina1Page, Pagina1Controller> {
  //use 'controller' variable to access controller
  List<String> imgs = [
    'lib/assets/8.png',
    'lib/assets/2.png',
    'lib/assets/3.png',
    'lib/assets/4.png',
    'lib/assets/5.png',
    'lib/assets/6.png',
    'lib/assets/7.png',
    'lib/assets/1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.only(
                left: 40,
                right: 40,
                top: 60,
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  'Hey, Caca!',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              subtitle: Text(
                'Welcome Back',
                style: GoogleFonts.dmSans(
                  fontSize: 15,
                ),
              ),
              trailing: FlatButton.icon(
                icon: Icon(Icons.qr_code),
                label: Text(
                  'Scan',
                  style: GoogleFonts.dmSans(),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 40,
                bottom: 30,
              ),
              child: Text(
                'Browse by Categories',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 270,
              child: ListView.builder(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: imgs.length,
                itemBuilder: (_, i) {
                  return CardItem1(
                    uri: imgs[i],
                    onPressed: () {
                      Modular.to.pushNamed('/produto', arguments: imgs[i]);
                    },
                  );
                },
              ),
            ),
            Divider(
              height: 60,
              color: Colors.black26,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                bottom: 30,
              ),
              child: Text(
                'Recommended for Your',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            GridView.builder(
              itemCount: imgs.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                return Item(
                  uri: imgs[i],
                  onPressed: () {
                    Modular.to.pushNamed('/produto', arguments: imgs[i]);
                  },
                  valor: 150.0,
                );
              },
              semanticChildCount: 2,
              padding: EdgeInsets.only(
                right: 30,
                left: 30,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
