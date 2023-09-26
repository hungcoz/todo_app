import 'package:flutter/material.dart';

class TodoScreenLiveCode extends StatelessWidget {
  TodoScreenLiveCode({super.key});

  final List<String> todos = ["Task 1", "Task 2", "Task 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                /// TODO:Function to delete task
                print("Delete task: ${todos[index]}");
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              String task = '';
              return AlertDialog(
                title: const Text('Add Todo'),
                content: TextField(
                  onChanged: (value) {
                    task = value;
                  },
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      /// TODO: Function to add task
                      print("Add task: $task");
                      Navigator.pop(context);
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
