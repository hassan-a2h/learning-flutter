// entities: todo
// attributes of todo: title, description, isDone
// methods of todo: toggleStatus, viewDetails, viewAll, viewDone, viewUndone

import 'dart:core';

class Todo {
  String title;
  String description;
  bool isDone;
  
  Todo(this.title, this.description, this.isDone);

  bool toggleStatus() {
    this.isDone = !this.isDone;
    return true;
  }

  static void viewAll(List<Todo> todos) {
    for (Todo todo in todos) {
      print("\n");
      print("Title: ${todo.title}");
      print("Description: ${todo.description}");
      print("Status: ${todo.isDone}");
    }
  }

  static void viewDetails(Todo todo) {
    print("\n");
    print("Title: ${todo.title}");
    print("Description: ${todo.description}");
    print("Status: ${todo.isDone}");
  }

  static void viewByStatus({required List<Todo> todos, required bool status}) {
    for (Todo todo in todos) {
      if (todo.isDone == status) {
        print("\n");
        print("Title: ${todo.title}");
        print("Description: ${todo.description}");
        print("Status: ${todo.isDone}");
      }
    }
  }
}

void main() {
  Todo todo1 = Todo("Todo 1", "Description 1", false);
  Todo todo2 = Todo("Todo 2", "Description 2", false);
  Todo todo3 = Todo("Todo 3", "Description 3", false);
  Todo todo4 = Todo("Todo 4", "Description 4", false);
  Todo todo5 = Todo("Todo 5", "Description 5", false);
  Todo todo6 = Todo("Todo 6", "Description 6", false);
  Todo todo7 = Todo("Todo 7", "Description 7", false);
  Todo todo8 = Todo("Todo 8", "Description 8", false);
  Todo todo9 = Todo("Todo 9", "Description 9", false);
  Todo todo10 = Todo("Todo 10", "Description 10", false);

  Todo.viewAll([todo1, todo2, todo3, todo4, todo5, todo6, todo7, todo8, todo9, todo10]);
}

