import 'dart:ui';

class Experience {
  const Experience(
      {required this.companyName,
      required this.role,
      this.companyPicture,
      required this.duration,
      required this.color,
      this.isCompleted = false});

  final String companyName;
  final String? companyPicture;
  final String role;
  final bool isCompleted;
  final String duration;
  final Color color;
}
