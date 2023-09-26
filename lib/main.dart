import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/basic_bloc/my_widget.dart';
import 'package:todo_app/todo_app_finished/bloc/todo_bloc.dart';
import 'package:todo_app/todo_app_finished/page/todo_page.dart';
import 'package:todo_app/todo_app_live_code/page/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLoC in Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget()),
                );
              },
              child: const Text("Basic BLoC"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => BlocProvider(
                //           create: (context) => TodoBloc(),
                //           child: const TodoScreen())),
                // );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TodoScreenLiveCode()));
              },
              child: const Text("Todo App"),
            ),
          ],
        ),
      ),
    );
  }
}
