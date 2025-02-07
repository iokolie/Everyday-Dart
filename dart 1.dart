import 'dart:async';

/// A class representing a single Task.
class Task {
  int id;
  String description;
  bool completed;

  // Constructor with a default value for 'completed'
  Task(this.id, this.description, {this.completed = false});

  // Toggles the completion status of the task.
  void toggleCompleted() {
    completed = !completed;
  }

  // Provides a readable string representation of the Task.
  @override
  String toString() {
    return 'Task{id: $id, description: "$description", completed: $completed}';
  }
}

/// A class to manage a list of tasks.
class TaskManager {
  final List<Task> tasks = [];
  int _nextId = 1;

  /// Adds a new task with the given description.
  void addTask(String description) {
    var task = Task(_nextId, description);
    tasks.add(task);
    _nextId++; // Increment the ID for the next task.
    print('Added: $task');
  }

  /// Marks the task with the specified [id] as completed.
  /// Simulates an asynchronous operation (e.g., a network call) with a delay.
  Future<void> markTaskCompleted(int id) async {
    // Simulate some delay (as if waiting for a response from a server).
    await Future.delayed(Duration(seconds: 1));
    
    try {
      // Find the task by id. If not found, firstWhere throws an error.
      var task = tasks.firstWhere((t) => t.id == id);
      if (!task.completed) {
        task.toggleCompleted();
        print('Task ${task.id} marked as completed.');
      } else {
        print('Task ${task.id} is already completed.');
      }
    } catch (e) {
      print('Task with id $id not found.');
    }
  }

  /// Removes the task with the given [id].
  void removeTask(int id) {
    int initialLength = tasks.length;
    tasks.removeWhere((t) => t.id == id);
    if (tasks.length < initialLength) {
      print('Task $id removed.');
    } else {
      print('Task with id $id not found. No task removed.');
    }
  }

  /// Lists all current tasks.
  void listTasks() {
    if (tasks.isEmpty) {
      print('No tasks available.');
      return;
    }
    print('Current Tasks:');
    tasks.forEach((task) => print(task));
  }
}

/// The main function demonstrating the TaskManager usage.
Future<void> main() async {
  var taskManager = TaskManager();

  // Adding tasks
  taskManager.addTask("Learn Dart basics");
  taskManager.addTask("Practice async/await");
  taskManager.addTask("Build a sample project");

  // Listing tasks
  print('\nListing tasks:');
  taskManager.listTasks();

  // Marking a task as completed asynchronously
  print('\nMarking task 2 as completed:');
  await taskManager.markTaskCompleted(2);

  // Listing tasks after updating
  print('\nListing tasks after updating:');
  taskManager.listTasks();

  // Removing a task
  print('\nRemoving task 1:');
  taskManager.removeTask(1);

  // Final list of tasks
  print('\nFinal list of tasks:');
  taskManager.listTasks();
}
