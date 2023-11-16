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
      ToDo(
        id: '01',
        todoText: 'More Tricky Questions',
        isDone: true,
      ),
      ToDo(
        id: '02',
        todoText: 'Tricky Questions',
        isDone: true,
      ),
      ToDo(
        id: '03',
        todoText: 'Analytical Reasoning',
      ),
      ToDo(
        id: '04',
        todoText: 'Verbal Reasoning',
      ),
      ToDo(
        id: '05',
        todoText: 'Countries',
      ),
      ToDo(
        id: '06',
        todoText: 'General Knowledge',
      ),
      ToDo(
        id: '07',
        todoText: 'Mathematical Problem Solving',
      ),
      ToDo(
        id: '08',
        todoText: 'Critical Thinking Questions',
      ),
      ToDo(
        id: '09',
        todoText: 'Random Questions',
      ),
      ToDo(
        id: '10',
        todoText: 'Logical Reasoning',
      ),
    ];
  }
}
