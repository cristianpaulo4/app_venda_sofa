import 'pagina2_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pagina2_page.dart';

class Pagina2Module extends ChildModule {
  @override
  List<Bind> get binds => [
        $Pagina2Controller,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => Pagina2Page()),
      ];

  static Inject get to => Inject<Pagina2Module>.of();
}
