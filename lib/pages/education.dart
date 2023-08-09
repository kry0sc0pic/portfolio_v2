import 'package:flutter/material.dart';
import 'package:portfolio2/models/education.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../components/education_card.dart';
import '../components/end_spacer.dart';
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
        const SimplePageHeader(
          title: 'education',
          subtitle: 'where I have studied.',
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: const LineStyle(color: Color(0xFFd7a756)),
          indicatorStyle: IndicatorStyle(
            color: const Color(0xFFd7a756),
            height: 40,
            width: 40,
            iconStyle: IconStyle(
              color: Colors.white,
              iconData: Icons.star_outline_rounded,
            ),
          ),
          isFirst: true,
        ),
        const EducationCard(
          borderOverride: Color(0xFFd7a756),
          education: Education(
              color: Colors.white,
              image: 'assets/iit.png',
              degree: 'B.S. in Data Science & Applications',
              name: 'Indian Institute of Technology, Madras',
              year: 2027,
              completed: false),
        ),
        TimelineTile(
            alignment: TimelineAlign.center,
            hasIndicator: false,
            beforeLineStyle: const LineStyle(
              color: Color(0xFFa01b35),
            ),
            afterLineStyle: const LineStyle(
              color: Color(0xFFa01b35),
            )),
        const EducationCard(
          borderOverride: Color(0xFFa01b35),
          education: Education(
              degree: 'B.Tech CSE (AI & ML)',
              image: 'assets/rait.jpg',
              color: Colors.white,
              name: 'Ramrao Adik Institute of Technology',
              year: 2027,
              completed: false),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: const LineStyle(color: Color(0xFF236a3b)),
          afterLineStyle: const LineStyle(color: Color(0xFF236a3b)),
          indicatorStyle: IndicatorStyle(
            color: const Color(0xFF236a3b),
            height: 35,
            width: 35,
            iconStyle: IconStyle(
              color: Colors.white,
              iconData: Icons.check_circle_outline_rounded,
            ),
          ),
        ),
        const EducationCard(
          borderOverride: Color(0xFF236a3b),
          iconColorOverride: Colors.white,
          education: Education(
              degree: 'High School Diploma',
              color: Colors.white,
              name: 'Delhi Public School, NM',
              image: 'assets/dps.png',
              year: 2023,
              completed: true),
        ),
        const PageEndSpacer()
      ],
    ));
  }
}
