# Calculadora Flutter 

Um aplicativo de calculadora simples e funcional desenvolvido em Flutter. Este projeto foi criado com o objetivo principal de aplicar conceitos de **desenvolvimento de interfaces** e **componentização de widgets**.

## Objetivo do Projeto

Praticar a separação de responsabilidades na interface gráfica do Flutter, dividindo a tela principal em pedaços de código menores, reutilizáveis e mais fáceis de manter.

## Funcionalidades

O aplicativo atende aos seguintes requisitos:
* Inserção de números (0-9).
* Operações matemáticas básicas:
  * Adição (`+`)
  * Subtração (`-`)
  * Multiplicação (`x`)
  * Divisão (`/`)
* Exibição do resultado e do histórico da operação atual na tela.
* Limpeza da operação (Botão `C`).
* Prevenção de erros básicos (como divisão por zero).

## Tecnologias e Widgets Utilizados

* **Framework:** Flutter / Dart
* **Layout:** `Column`, `Row`, `Expanded`, `Container`
* **Estado:** `StatefulWidget` (para a tela principal) e `StatelessWidget` (para os componentes visuais).

## A interface foi dividida para maximizar a reutilização de código. A pasta `lib/` está organizada da seguinte forma:

* `main.dart`: Ponto de entrada do aplicativo e configuração do tema.
* `calculator_screen.dart`: Tela principal que contém a lógica matemática e gerencia o estado da calculadora.
* `calculator_display.dart`: Widget customizado responsável apenas por renderizar os números e resultados na tela.
* `calculator_button.dart`: Widget customizado que padroniza o design e o comportamento de clique de todos os botões da calculadora.

## Como Executar o Projeto

Para rodar este projeto na sua máquina, você precisará do [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado.

1. Clone este repositório ou baixe o código fonte.
2. Abra o terminal na pasta raiz do projeto.
3. Baixe as dependências executando o comando:
   ```bash
   flutter pub get
