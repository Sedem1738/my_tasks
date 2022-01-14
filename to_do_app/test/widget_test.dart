import 'package:flutter_test/flutter_test.dart';
import 'package:to_do_app/controllers/todo_controller.dart';

void main() {
  final TodoController _todoController = TodoController();

  test('should return 200', () {
    _todoController.getAllTodos();
  });
}
