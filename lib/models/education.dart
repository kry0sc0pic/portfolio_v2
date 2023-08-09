import 'dart:ui';

class Education {
  const Education({
    required this.name,
    required this.degree,
    required this.year,
    required this.color,
    this.image,
    this.completed,
  });
  final String name;
  final String degree;
  final Color color;
  final int year;
  final bool? completed;
  final String? image;

  bool get isCompleted => completed ?? year < DateTime.now().year;
}
