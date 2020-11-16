import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pagina_produto_controller.g.dart';

@Injectable()
class PaginaProdutoController = _PaginaProdutoControllerBase
    with _$PaginaProdutoController;

abstract class _PaginaProdutoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
