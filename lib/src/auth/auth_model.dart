class AuthModel {
  final String title;
  final String first;
  final String last;
  AuthModel(this.title, this.first, this.last);

  AuthModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        first = json["first"],
        last = json["last"];
}