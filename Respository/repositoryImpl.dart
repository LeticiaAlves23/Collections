import '../Models/Entity.dart';
import 'repositry.dart';

class RepositoryImpl<T extends Entity, ID> implements Repository<T, ID> {
  List<T> _lista = List<T>();

  List<T> get lista => _lista;

  @override
  T cadastrar(T obj) {
    _lista.add(obj);
    return obj;
  }

  @override
  T alterar(T o) {
    print(o.id);
    //Verificar se existe na lista
    int index = _lista.indexWhere((element) => element.id == o.id);

    _lista.setAll(index, [o]);

    return o;
  }

  @override
  T buscarPorID(ID o) {
    throw UnimplementedError();
  }

  @override
  void excluir(T o) {
    throw UnimplementedError();
  }

  @override
  List<T> buscarTodos() {
    return lista;
  }
}
