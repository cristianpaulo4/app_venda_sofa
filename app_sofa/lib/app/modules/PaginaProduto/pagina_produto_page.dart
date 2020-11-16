import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pagina_produto_controller.dart';

class PaginaProdutoPage extends StatefulWidget {
  final String title;
  final String uri;
  final String tag;
  const PaginaProdutoPage(
      {Key key, this.title = "PaginaProduto", this.uri, this.tag})
      : super(key: key);

  @override
  _PaginaProdutoPageState createState() => _PaginaProdutoPageState();
}

class _PaginaProdutoPageState
    extends ModularState<PaginaProdutoPage, PaginaProdutoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[50],
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'CHAIR',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          'Charlotte \nArmchair',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'From',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          '\$289.99',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Available Colors',
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(3.8, 0),
                    child: Hero(
                      tag: widget.uri,
                      child: Image.asset(
                        '${widget.uri}',
                        width: 350,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(
                top: 60,
                left: 30,
                right: 30,
              ),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Charlotte Armcharir',
                    style: GoogleFonts.dmSans(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Feel the warm embrace the Charlotte armchair. Charlotte comfort, durability and beautiful design allow it to easily finds its place in any room. It is sutable for family visits and parties with friends and perfect for relaxing inf frot of the TV after  hard work.',
                    style: GoogleFonts.dmSans(
                      fontSize: 17,
                      color: Colors.black45,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        child: FloatingActionButton.extended(
                          backgroundColor: Color(0xffE7A006),
                          label: Text('ADD TO CART'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
