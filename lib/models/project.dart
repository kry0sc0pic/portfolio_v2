class Project {
  String name;
  String description;
  String? image;
  String tag;
  Project(
      {required this.name,
      required this.description,
      this.image,
      required this.tag});
}
