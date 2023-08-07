import 'package:portfolio2/models/position.dart';

class Experience {
  const Experience(
      {required this.companyName,
      required this.companyPicture,
      required this.positions});

  final String companyName;
  final String companyPicture;
  final List<Position> positions;
}
