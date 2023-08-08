class Project {
  String name;
  String description;
  String? image;
  int awardCount;
  String tag;
  Project(
      {required this.name,
      required this.description,
      this.image,
      this.awardCount = 0,
      required this.tag});
}
