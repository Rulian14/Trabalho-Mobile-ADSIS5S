import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/task_provider.dart';
import '../widgets/task_input_field.dart';
import '../widgets/task_list_item.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskProvider);

    final completedCount = tasks.where((t) => t.isCompleted).length;
    final totalCount = tasks.length;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6C63FF),
        foregroundColor: Colors.white,
        title: const Text(
          '📝 Minhas Tarefas',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Cabeçalho com progresso
          Container(
            width: double.infinity,
            color: const Color(0xFF6C63FF),
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
            child: Text(
              totalCount == 0
                  ? 'Nenhuma tarefa ainda'
                  : '$completedCount de $totalCount concluídas',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Campo de entrada
          const TaskInputField(),

          // Lista de tarefas
          Expanded(
            child: tasks.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.check_circle_outline,
                            size: 64, color: Colors.grey),
                        SizedBox(height: 16),
                        Text(
                          'Adicione uma tarefa acima!',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      return TaskListItem(task: task);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
