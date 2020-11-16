import 'pagina_produto_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pagina_produto_page.dart';

class PaginaProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PaginaProdutoController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PaginaProdutoPage()),
      ];

  static Inject get to => Inject<PaginaProdutoModule>.of();
}
