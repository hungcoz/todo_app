import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/todo_app_finished/bloc/todo_event.dart';
import 'package:todo_app/todo_app_finished/bloc/todo_state.dart';

// BLoC
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  List<String> todos = [];

  TodoBloc() : super(TodoInitial()) {
    on<InitTodo>(_onInitTodo);
    on<AddTodo>(_onAddTodo);
    on<RemoveTodo>(_onRemoveTodo);
  }

  void _onInitTodo(InitTodo event, Emitter<TodoState> emit) {
    emit(TodoLoading());
    // fetch data from API
    emit(TodoLoaded(todos));
  }

  void _onAddTodo(AddTodo event, Emitter<TodoState> emit) {
    emit(TodoLoading());
    todos.add(event.task);
    // send data to API
    emit(TodoLoaded(todos));
  }

  void _onRemoveTodo(RemoveTodo event, Emitter<TodoState> emit) {
    emit(TodoLoading());
    todos.removeAt(event.index);
    // send data to API
    emit(TodoLoaded(todos));
  }
}
