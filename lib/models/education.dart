class Education {
  const Education({
    required this.name,
    required this.degree,
    required this.year,
    this.image,
    this.completed,
  });
  final String name;
  final String degree;
  final int year;
  final bool? completed;
  final String? image;

  bool get isCompleted => completed ?? year < DateTime.now().year;
}
