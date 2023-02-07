class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      //ToDo(id: '01', todoText: 'Morning Excercise'),
      // ToDo(id: '02', todoText: 'Buy Groceries '),
      // ToDo(id: '03', todoText: 'Check Email '),
      // ToDo(id: '04', todoText: ' Team Meeting'),
      // ToDo(id: '05', todoText: ' Skill working time 4 Hour'),
      // ToDo(id: '06', todoText: ' Dinner with Jesmin'),
    ];
  }
}
