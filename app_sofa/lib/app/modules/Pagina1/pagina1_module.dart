import 'pagina1_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pagina1_page.dart';

class Pagina1Module extends ChildModule {
  @override
  List<Bind> get binds => [
        $Pagina1Controller,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => Pagina1Page()),
      ];

  static Inject get to => Inject<Pagina1Module>.of();
}
