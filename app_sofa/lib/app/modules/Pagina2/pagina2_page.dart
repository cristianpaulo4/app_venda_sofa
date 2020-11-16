import 'package:app_sofa/app/modules/Pagina1/components/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pagina2_controller.dart';

class Pagina2Page extends StatefulWidget {
  final String title;
  const Pagina2Page({Key key, this.title = "Pagina2"}) : super(key: key);

  @override
  _Pagina2PageState createState() => _Pagina2PageState();
}

class _Pagina2PageState extends ModularState<Pagina2Page, Pagina2Controller> {
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
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        toolbarHeight: 100,
        flexibleSpace: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 15,
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Buscar...',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                contentPadding: EdgeInsets.all(15),
              ),
              style: GoogleFonts.dmSans(
                fontSize: 20,
              ),
              cursorColor: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
                right: 30,
                bottom: 50,
              ),
              child: Text(
                '20 RESULTS',
                style: GoogleFonts.dmSans(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
            ),
            GridView.builder(
              itemCount: imgs.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                return Hero(
                  tag: imgs[i],
                  child: Item(
                    uri: imgs[i],
                    onPressed: () {
                      Modular.to.pushNamed('/produto', arguments: imgs[i]);
                    },
                    valor: 150.0,
                  ),
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
