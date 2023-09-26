import 'dart:async';

class MyBloc {
  // Declare Sink and StreamController
  final _myController = StreamController<String>();
  Sink<String> get mySink => _myController.sink;
  Stream<String> get myStream => _myController.stream;

  // Methods for handling business logic
  void doSomething() {
    // Handle the business logic here and put the data into Sink
    mySink.add("Data from BLoC");
  }

  // Dispose function to release resources
  void dispose() {
    _myController.close();
  }
}
