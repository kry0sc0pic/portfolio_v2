import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import '../models/education.dart';
import '../themes.dart';

class EducationCard extends StatefulWidget {
  const EducationCard({super.key, required this.education});
  final Education education;

  @override
  State<EducationCard> createState() => _EducationCardState();
}

class _EducationCardState extends State<EducationCard> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tileColor: kWhiteBlackAccentByTheme(context, opacity: 0.15),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: (widget.education.isCompleted
                      ? Colors.greenAccent
                      : Colors.blueAccent)
                  .withOpacity(1),
              width: 4),
          borderRadius: BorderRadius.circular(20),
        ),
        trailing: Text(widget.education.year.toString(),
            style: kSpaceMonoTextStyle(context)
                .copyWith(fontWeight: FontWeight.bold)),
        title: Text(widget.education.name,
            style: kManropeTextStyle(context)
                .copyWith(fontWeight: FontWeight.bold, letterSpacing: 0.2)),
        visualDensity: VisualDensity.comfortable,
        subtitle: Text(widget.education.degree,
            style: kManropeTextStyle(context, opacity: 0.7)),
        leading: CircleAvatar(
          backgroundColor: widget.education.isCompleted
              ? Colors.greenAccent
              : Colors.blueAccent,
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
