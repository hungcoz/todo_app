import 'package:equatable/equatable.dart';

// States
abstract class TodoState extends Equatable {
  const TodoState();
}

class TodoInitial extends TodoState {
  @override
  List<Object> get props => [];
}

class TodoLoading extends TodoState {
  @override
  List<Object> get props => [];
}

class TodoLoaded extends TodoState {
  final List<String> todos;
  const TodoLoaded(this.todos);

  @override
  List<Object> get props => [todos];
}
