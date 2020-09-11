class TodoModel {
  String title;
  String description;
  DateTime dateTime;
  List<String> tags;

  TodoModel({
    this.title,
    this.description,
    this.dateTime,
    this.tags,
  });
}

final List<TodoModel> DUMMY_LIST = [
  for (var i = 0; i < 20; i++)
    TodoModel(
      title: 'title $i',
      description: 'description $i',
      dateTime: new DateTime.now(),
      tags: [],
    )
];
