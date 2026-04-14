# 📝 To-Do List — Flutter + Riverpod

Aplicativo de lista de tarefas desenvolvido com Flutter e gerenciamento de estado com Riverpod, como atividade avaliativa da disciplina de Desenvolvimento Mobile.

# Descrição da Aplicação

O app permite que o usuário gerencie suas tarefas do dia a dia de forma simples e intuitiva. É possível:

-  Adicionar novas tarefas
-  Visualizar todas as tarefas em lista
-  Marcar tarefas como concluídas
-  Remover tarefas (pelo botão ou deslizando para a esquerda)

# Gerenciamento de Estado com Riverpod

O estado da aplicação é controlado inteiramente via Riverpod, utilizando o padrão `StateNotifier`:

# Estrutura

```
lib/
├── main.dart                   # Entry point, configura o ProviderScope
├── models/
│   └── task.dart               # Modelo de dados da tarefa
├── providers/
│   └── task_provider.dart      # TaskNotifier + taskProvider (Riverpod)
├── screens/
│   └── home_screen.dart        # Tela principal (ConsumerWidget)
└── widgets/
    ├── task_input_field.dart   # Campo de entrada (ConsumerStatefulWidget)
    └── task_list_item.dart     # Item da lista (ConsumerWidget)
```

# Como funciona

- `TaskNotifier` estende `StateNotifier<List<Task>>` e contém toda a lógica: adicionar, marcar e remover tarefas.
- `taskProvider` é um `StateNotifierProvider` global que expõe o notifier e o estado atual da lista.
- Os widgets usam `ref.watch(taskProvider)` para reagir automaticamente a mudanças no estado.
- Para acionar ações, usam `ref.read(taskProvider.notifier).addTask(...)`, etc.

```dart
// Exemplo: adicionar tarefa
ref.read(taskProvider.notifier).addTask("Estudar Flutter");

// Exemplo: marcar como concluída
ref.read(taskProvider.notifier).toggleTask(task.id);

// Exemplo: remover tarefa
ref.read(taskProvider.notifier).removeTask(task.id);
```

# Instruções para Execução

# Pré-requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado (versão ≥ 3.0)
- Dispositivo físico ou emulador configurado

# Passos

```bash
# 1. Clone o repositório
git clone https://github.com/SEU_USUARIO/todo_app.git
cd todo_app

# 2. Instale as dependências
flutter pub get

# 3. Execute o app
flutter run
```

---

# Dependências

| Pacote | Versão | Finalidade |
|---|---|---|
| `flutter_riverpod` | ^2.5.1 | Gerenciamento de estado |
| `uuid` | ^4.3.3 | Geração de IDs únicos para as tarefas |

---

# Demonstração

> *(Adicione aqui prints ou GIFs do app em funcionamento)*

---

# Integrantes

| Nome | GitHub |
|---|---|
| Nome do integrante 1 | @usuario1 |
| Nome do integrante 2 | @usuario2 |
| Nome do integrante 3 | @usuario3 |
