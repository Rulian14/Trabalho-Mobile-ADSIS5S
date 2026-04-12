

import 'dart:io';
import 'package:dart_web_application_1/models/livro.dart';
import 'package:dart_web_application_1/services/biblioteca.dart';

void main() {
  Biblioteca biblioteca = Biblioteca();
  int opcao = -1;

  while (opcao != 0) {
    print('\n===== SISTEMA DE BIBLIOTECA =====');
    print('1 - Cadastrar livro');
    print('2 - Listar Livros');
    print('3 - Atualizar livro');
    print('4 - Remover livro');
    print('0 - Sair');
    stdout.write('Escolha uma opção: ');

    opcao = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    switch (opcao) {
      case 1:
        cadastrarLivro(biblioteca);
        break;
      case 2:
        biblioteca.listarLivros();
        break;
      case 3:
        atualizarLivro(biblioteca);
        break;
      case 4:
        removerLivro(biblioteca);
        break;
      case 0:
        print('Saindo do sistema...');
        break;
      default:
        print('Opção inválida!');
    }
  }
}

// Função para cadastrar livro
void cadastrarLivro(Biblioteca biblioteca) {
  stdout.write('ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Título: ');
  String titulo = stdin.readLineSync()!;

  stdout.write('Autor: ');
  String autor = stdin.readLineSync()!;

  stdout.write('Ano: ');
  int ano = int.parse(stdin.readLineSync()!);

  biblioteca.cadastrarLivro(Livro(id, titulo, autor, ano));
}

// Função para atualizar livro
void atualizarLivro(Biblioteca biblioteca) {
  stdout.write('ID do livro a atualizar: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Novo título: ');
  String titulo = stdin.readLineSync()!;

  stdout.write('Novo autor: ');
  String autor = stdin.readLineSync()!;

  stdout.write('Novo ano: ');
  int ano = int.parse(stdin.readLineSync()!);

  biblioteca.atualizarLivro(id, titulo, autor, ano);
}

// Função para remover livro
void removerLivro(Biblioteca biblioteca) {
  stdout.write('ID do livro a remover: ');
  int id = int.parse(stdin.readLineSync()!);

  biblioteca.removerLivro(id);
}