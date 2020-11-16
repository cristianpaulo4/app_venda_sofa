import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pagina2_controller.g.dart';

@Injectable()
class Pagina2Controller = _Pagina2ControllerBase with _$Pagina2Controller;

abstract class _Pagina2ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
