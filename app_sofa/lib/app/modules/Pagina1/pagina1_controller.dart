import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pagina1_controller.g.dart';

@Injectable()
class Pagina1Controller = _Pagina1ControllerBase with _$Pagina1Controller;

abstract class _Pagina1ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
