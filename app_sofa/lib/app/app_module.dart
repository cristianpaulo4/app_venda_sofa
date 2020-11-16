import 'package:app_sofa/app/modules/Pagina1/pagina1_controller.dart';
import 'package:app_sofa/app/modules/Pagina1/pagina1_page.dart';
import 'package:app_sofa/app/modules/Pagina2/pagina2_controller.dart';
import 'package:app_sofa/app/modules/PaginaProduto/pagina_produto_controller.dart';
import 'package:app_sofa/app/modules/PaginaProduto/pagina_produto_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:app_sofa/app/app_widget.dart';
import 'package:app_sofa/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $Pagina1Controller,
        $Pagina2Controller,
        $PaginaProdutoController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter(
          'primeira',
          child: (_, args) => Pagina1Page(),
        ),
        ModularRouter(
          '/produto',
          child: (_, args) => PaginaProdutoPage(
            uri: args.data,
          ),
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
