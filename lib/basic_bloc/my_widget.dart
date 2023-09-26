import 'package:flutter/material.dart';

import 'my_bloc.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _myBloc = MyBloc();

  @override
  void dispose() {
    // When the widget is destroyed, it is necessary to release the BLoC
    _myBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic BLoC'),
      ),
      body: Center(
        child: StreamBuilder<String>(
          stream: _myBloc.myStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data ?? "");
            } else {
              return const Text('No data from BLoC yet.');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // When the user presses the button, call BLoC's method
          _myBloc.doSomething();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
