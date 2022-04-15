import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

// Sempre que alterar informações do controller, é necessário chamar o rodar o flutter pub run builde_runner build no terminal
abstract class ControllerBase with Store {
  ControllerBase() {
    // Executa sempre que um observável tem seu estado alterado.
    autorun((_) {
      print("Email: ${_email}");
      print("Senha: ${_senha}");
      print("Valido: ${formularioValido}");
    });
  }
  @observable
  int contador = 0;

  @observable
  String _email = '';
  @observable
  String _senha = '';

  @action
  void setEmail(String v) => _email = v;

  @action
  void setSenha(String v) => _senha = v;

  @computed
  bool get formularioValido => _email.length >= 5 && _senha.length >= 5;

  @action
  incrementar() {
    contador++;
  }
}
