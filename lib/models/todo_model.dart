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
  TodoModel(
    title: 'title 1',
    description: 'description 1',
    dateTime: new DateTime.now(),
    tags: [],
  ),
  TodoModel(
    title: 'title 2',
    description: 'description 2',
    dateTime: new DateTime.now(),
    tags: [],
  ),
  TodoModel(
    title: 'title 3',
    description: 'description 3',
    dateTime: new DateTime.now(),
    tags: [],
  ),
  TodoModel(
    title: 'title 4',
    description: 'description 4',
    dateTime: new DateTime.now(),
    tags: [],
  ),
  TodoModel(
    title: 'title 5',
    description: 'description 5',
    dateTime: new DateTime.now(),
    tags: [],
  ),
];
