import 'package:app_sofa/app/modules/Pagina1/pagina1_page.dart';
import 'package:app_sofa/app/modules/Pagina2/pagina2_page.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController>
    with SingleTickerProviderStateMixin {
  //use 'controller' variable to access controller
  int index = 0;
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      vsync: this,
      initialIndex: 0,
      length: 4,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Pagina1Page(),
          Pagina2Page(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: CubertoBottomBar(
        inactiveIconColor: Color(0xffE7A006),
        tabStyle: CubertoTabStyle.STYLE_NORMAL,
        selectedTab: index,
        barShadow: [
          BoxShadow(
            color: Colors.white,
          )
        ],
        padding: EdgeInsets.all(13),
        tabs: [
          TabData(
            iconData: Icons.home,
            title: 'Home',
            tabGradient: LinearGradient(
              colors: [
                Color(0xffE7A006),
                Color(0xFF463510),
              ],
              end: Alignment.bottomCenter,
              tileMode: TileMode.mirror,
            ),
          ),
          TabData(
            iconData: Icons.search,
            title: 'Buscar',
          ),
          TabData(
            iconData: Icons.shopping_bag,
            title: 'Sacola',
          ),
          TabData(
            iconData: Icons.person,
            title: 'Perfil',
          ),
        ],
        onTabChangedListener: (position, title, color) {
          setState(() {
            index = position;
            _tabController.animateTo(position);

            /*  currentPage = position;
            currentTitle = title;
            currentColor = color; */
          });
        },
      ),
    );
  }
}
