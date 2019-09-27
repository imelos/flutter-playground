class Data {
  String normal;
  String pressed;
  double width;
  double height;
  final VoidCallback onPress;
  Data({this.normal, this.pressed, this.width, this.height, this.onPress});
}

typedef void VoidCallback();
