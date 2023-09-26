import 'package:equatable/equatable.dart';

// Events
abstract class TodoEvent extends Equatable {
  const TodoEvent();
}

class InitTodo extends TodoEvent {
  const InitTodo();

  @override
  List<Object> get props => [];
}

class AddTodo extends TodoEvent {
  final String task;
  const AddTodo(this.task);

  @override
  List<Object> get props => [task];
}

class RemoveTodo extends TodoEvent {
  final int index;
  const RemoveTodo(this.index);

  @override
  List<Object> get props => [index];
}
