class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todoText': todoText,
      'isDone': isDone,
    };
  }

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
      id: json['id'],
      todoText: json['todoText'],
      isDone: json['isDone'],
    );
  }
}



























// [
//       ToDo(
//         id: '01',
//         todoText: 'More Tricky Questions',
//         isDone: false,
//       ),
//       ToDo(
//         id: '02',
//         todoText: 'Tricky Questions',
//         isDone: false,
//       ),
//       ToDo(
//         id: '03',
//         todoText: 'Analytical Reasoning',
//         isDone: false,
//       ),
//       ToDo(
//         id: '04',
//         todoText: 'Verbal Reasoning',
//         isDone: false,
//       ),
//       ToDo(
//         id: '05',
//         todoText: 'Countries',
//         isDone: false,
//       ),
//       ToDo(
//         id: '06',
//         todoText: 'General Knowledge',
//         isDone: false,
//       ),
//       ToDo(
//         id: '07',
//         todoText: 'Mathematical Problem Solving',
//         isDone: false,
//       ),
//       ToDo(
//         id: '08',
//         todoText: 'Critical Thinking Questions',
//         isDone: false,
//       ),
//       ToDo(
//         id: '09',
//         todoText: 'Random Questions',
//         isDone: true,
//       ),
//       ToDo(
//         id: '10',
//         todoText: 'Logical Reasoning',
//         isDone: true,
//       ),
//     ];