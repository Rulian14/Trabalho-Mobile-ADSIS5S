⚠️ IMPORTANTE: COMO EXECUTAR ESTA PARTE DO PROJETO

ATENÇÃO: Esta etapa é obrigatória para rodar corretamente esta parte do trabalho.
Quando você abre esta subpasta, apenas uma parte do README aparece — então siga exatamente os passos abaixo.

▶️ Como executar

Clone o repositório:

git clone <URL_DO_REPOSITORIO>

Localize o arquivo(na pasta dart_web_application_1 que está dentro de Trabalho_2):

pubspec.yaml
Clique com o botão direito no arquivo pubspec.yaml

Selecione:

Open in Integrated Terminal

No terminal que abrir, execute:

dart run bin/main.dart
💡 Observações
É importante abrir o terminal a partir do pubspec.yaml, para garantir que você está no diretório correto.

📦 Sobre o projeto (conteúdo original)

A bare-bones Dart web app.

Uses package:web

to interop with JS and the DOM.

Running and building

To run the app, activate and use package:webdev
:

dart pub global activate webdev
webdev serve

To build a production version ready for deployment:

webdev build

To learn more: https://dart.dev/interop/js-interop

Se quiser, posso deixar isso ainda mais “à prova de erro” (tipo detectar automaticamente o diretório errado ou explicar pro professor por que precisa abrir pelo pubspec).
