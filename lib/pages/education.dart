import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:portfolio2/models/education.dart';
import 'package:portfolio2/themes.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../components/education_card.dart';
import '../components/end_spacer.dart';
import '../components/notes_card.dart';
import '../components/simple_page_header.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SimplePageHeader(
          title: 'education',
          subtitle: 'where I have studied.',
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: LineStyle(color: Colors.blueAccent),
          indicatorStyle: IndicatorStyle(
            color: Colors.blueAccent,
            height: 40,
            width: 40,
            iconStyle: IconStyle(
              color: Colors.white,
              iconData: Icons.star_rounded,
            ),
          ),
          isFirst: true,
        ),
        const EducationCard(
          education: Education(
              degree: 'B.S. in Data Science & Applications',
              name: 'Indian Institute of Technology, Madras',
              year: 2027,
              completed: false),
        ),
        TimelineTile(
            alignment: TimelineAlign.center,
            hasIndicator: false,
            beforeLineStyle: LineStyle(color: Colors.blueAccent),
            afterLineStyle: LineStyle(color: Colors.blueAccent)),
        const EducationCard(
          education: Education(
              degree: 'B.Tech CSE (AI & ML)',
              name: 'Ramrao Adik Institute of Technology',
              year: 2027,
              completed: false),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: LineStyle(color: Colors.blueAccent),
          afterLineStyle: LineStyle(color: Colors.greenAccent),
          indicatorStyle: IndicatorStyle(
            color: Colors.greenAccent,
            height: 35,
            width: 35,
            iconStyle: IconStyle(
              color: Colors.white,
              iconData: Icons.check,
            ),
          ),
        ),
        const EducationCard(
          education: Education(
              degree: 'High School Diploma',
              name: 'Delhi Public School, NM',
              year: 2023,
              completed: true),
        ),
        const PageEndSpacer()
      ],
    ));
  }
}
