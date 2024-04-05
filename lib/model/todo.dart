class Todo {
  String id;
  String name;
  bool isDone;
  Todo({
    required this.id,
    required this.name,
    this.isDone = false,
  });
  static List<Todo> todoList() {
    return [
      Todo(id: '01', name: 'Learn Code', isDone: true),
      Todo(id: '02', name: 'Learn English'),
      Todo(id: '03', name: 'Do exercise'),
      Todo(id: '04', name: 'Do Homework'),
      Todo(id: '05', name: 'Dinner with Mang'),
    ];
  }
}
