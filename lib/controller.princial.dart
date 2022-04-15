import 'package:mobx/mobx.dart';
import 'package:pessoal_mobx/item.controller.princial.dart';
part 'controller.princial.g.dart';

class ControllerPrincial = ControllerPrincialBase with _$ControllerPrincial;

// Sempre que alterar informações do controller, é necessário chamar o rodar o flutter pub run builde_runner build no terminal
abstract class ControllerPrincialBase with Store {
  ControllerPrincialBase() {
    // Executa sempre que um observável tem seu estado alterado.
    autorun((_) {});
  }
  @observable
  String nomeItem = '';
  @action
  void setNovoItem(String v) => nomeItem = v;

  ObservableList<IemControllerPrincial> listaItens =
      ObservableList<IemControllerPrincial>();

  void adicionarItens() {
    listaItens.add(IemControllerPrincial(nomeItem));
    nomeItem = '';
  }
}
