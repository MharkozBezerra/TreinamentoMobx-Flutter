import 'package:mobx/mobx.dart';
part 'item.controller.princial.g.dart';

class IemControllerPrincial = IemControllerPrincialBase
    with _$IemControllerPrincial;

// Sempre que alterar informações do controller, é necessário chamar o rodar o flutter pub run builde_runner build no terminal
abstract class IemControllerPrincialBase with Store {
  String titulo = '';
  IemControllerPrincialBase(this.titulo);

  @observable
  bool marcado = false;

  @action
  void setMarcado(bool v) => marcado = v;

  void alterarMarcado(bool v) => setMarcado(v);
}
