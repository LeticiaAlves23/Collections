import 'Models/Grupo.dart';
import 'Service/GrupoService.dart';

main() {
  Grupo group = new Grupo();
  group.id = 70;
  group.nome = "Gap";
  group.descricao = "Sintos amarelos";

  Grupo group2 = new Grupo();
  group2.id = 80;
  group2.nome = "king";
  group2.descricao = "Sintos pretos";

  print(group);
  print(group2);

  //Lista de grupos
  List<String> list = new List<String>();
  list.add('blue');
  list.add('yellow');
  list.add('black');
  list.add('witer');
  list.forEach((element) => print(element));

  //map
  var grupo = {"id": "40", 'nome': 'Tom', 'descricao': 'Sinto personalizado'};
  grupo.forEach((c, s) => print('${c}: ${s}'));

  //Set<String> set = Set.from(list);
  //set.forEach((element) => print(element));

  /* group.descricao = "Sintos personalizados!";
  Grupo groupAlterado = GrupoService.alterar(group);
  print("Grupo Alterado:" + groupAlterado.toString());

  print("Despois Alteraçãoo");
  GrupoService.buscarTodos().forEach((element) {
    print(element);
  });*/
}
