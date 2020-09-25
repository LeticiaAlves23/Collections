import '../Models/Grupo.dart';
import '../Respository/repositry.dart';

class GrupoService {
  Repository<Grupo, int> repository;

  ClienteService(Repository<Grupo, int> repository) {
    this.repository = repository;
  }

  cadastrar(Grupo grupo) {
    if (grupo.nome.length > 100) throw ("Nome muito grande");

    //repository.cadastrar(WebGL.TEXTURE_CUBE_MAP_POSITIVE_Z);
    repository.cadastrar(grupo);
  }

  List<Grupo> get buscarTodos {
    return repository.buscarTodos();
  }

  Grupo alterar(Grupo grupo) {
    return repository.alterar(grupo);
  }
}
