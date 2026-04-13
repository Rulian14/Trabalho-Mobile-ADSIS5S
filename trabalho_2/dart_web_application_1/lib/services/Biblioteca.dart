import 'package:dart_web_application_1/models/livro.dart';

class Biblioteca {
  List<Livro> livros = [];

  // Cadastrar livro
  void cadastrarLivro(Livro livro) {
    livros.add(livro);
    print('Livro "${livro.titulo}" cadastrado com sucesso!');
  }

  // Listar livros
  void listarLivros() {
    if (livros.isEmpty) {
      print('Nenhum livro cadastrado.');
      return;
    }

    print('\nLista de livros:');
    for (var livro in livros) {
      livro.exibirDetalhes();
    }
  }

  // Atualizar livro
  void atualizarLivro(int id, String novoTitulo, String novoAutor, int novoAno) {
    for (var livro in livros) {
      if (livro.id == id) {
        livro.titulo = novoTitulo;
        livro.autor = novoAutor;
        livro.ano = novoAno;
        print('Livro atualizado com sucesso!');
        return;
      }
    }
    print('Livro não encontrado.');
  }

  // Remover livro
  void removerLivro(int id) {
  var antes = livros.length;
  livros.removeWhere((livro) => livro.id == id);

  if (livros.length < antes) {
    print('Livro removido com sucesso!');
  } else {
    print('Livro não encontrado.');
  }
}
}