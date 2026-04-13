class Livro {
  int id;
  String titulo;
  String autor;
  int ano;

  // Construtor
  Livro(this.id, this.titulo, this.autor, this.ano);

  // Método para exibir detalhes
  void exibirDetalhes() {
    print('ID: $id | Título: $titulo | Autor: $autor | Ano: $ano');
  }
}