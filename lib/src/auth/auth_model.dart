class AuthModel {
  final String title;
  final String first;
  final String last;
  final bool completed;
  AuthModel(this.title, this.first, this.last, this.completed);
  AuthModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        first = json["first"],
        last = json["last"],
        completed = json["completed"];
}