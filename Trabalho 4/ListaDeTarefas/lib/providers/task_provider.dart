import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/task.dart';
import 'package:uuid/uuid.dart';

// Notifier responsável pela lógica de negócio das tarefas
class TaskNotifier extends StateNotifier<List<Task>> {
  TaskNotifier() : super([]);

  final _uuid = const Uuid();

  // Adiciona uma nova tarefa à lista
  void addTask(String title) {
    if (title.trim().isEmpty) return;

    final newTask = Task(
      id: _uuid.v4(),
      title: title.trim(),
    );

    state = [...state, newTask];
  }

  // Alterna o status de conclusão da tarefa
  void toggleTask(String id) {
    state = state.map((task) {
      if (task.id == id) {
        return task.copyWith(isCompleted: !task.isCompleted);
      }
      return task;
    }).toList();
  }

  // Remove uma tarefa pelo ID
  void removeTask(String id) {
    state = state.where((task) => task.id != id).toList();
  }
}

// Provider global exposto para a UI
final taskProvider = StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  return TaskNotifier();
});
