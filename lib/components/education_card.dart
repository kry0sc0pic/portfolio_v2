import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import '../models/education.dart';
import '../themes.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({super.key, required this.education});
  final Education education;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tileColor: kWhiteBlackAccentByTheme(context, opacity: 0.15),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: (education.isCompleted
                      ? Colors.greenAccent
                      : Colors.blueAccent)
                  .withOpacity(1),
              width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        trailing: Text(education.year.toString(),
            style: kSpaceMonoTextStyle(context)
                .copyWith(fontWeight: FontWeight.bold)),
        title: Text(education.name,
            style: kEpilogueTextStyle(context)
                .copyWith(fontWeight: FontWeight.bold, letterSpacing: 0.2)),
        visualDensity: VisualDensity.comfortable,
        subtitle: Text(education.degree,
            style: kEpilogueTextStyle(context, opacity: 0.7)),
        leading: CircleAvatar(
          backgroundColor:
              education.isCompleted ? Colors.greenAccent : Colors.blueAccent,
          child: Icon(
            PhosphorIcons.buildings,
            color: kWhiteBlackAccentByTheme(context),
          ),
          // foregroundImage: Ass,
        ),
      ),
    );
  }
}
