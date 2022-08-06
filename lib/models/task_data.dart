import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  final List<Task> _tasks = [
    Task(name: 'Milk', isDone: false),
    Task(name: 'Eggs', isDone: false),
    Task(name: 'Meat', isDone: false),
    Task(name: 'Cheese', isDone: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask (String newTaskTitle) {
    final task = Task(name: newTaskTitle, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
  
  void deleteTask (Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}