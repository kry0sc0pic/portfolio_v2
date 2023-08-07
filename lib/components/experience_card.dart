import 'package:flutter/material.dart';

import '../models/experience.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.experience});
  final Experience experience;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
