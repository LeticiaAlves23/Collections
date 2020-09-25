import 'Entity.dart';

class Grupo extends Entity {
  int id;
  String nome;
  String descricao;

  @override
  String toString() {
    return "$id   $nome  $descricao";
  }
}
