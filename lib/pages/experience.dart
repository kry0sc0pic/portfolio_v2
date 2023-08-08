import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:portfolio2/components/experience_card.dart';
import 'package:portfolio2/models/experience.dart';
import 'package:portfolio2/themes.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../components/education_card.dart';
import '../components/end_spacer.dart';
import '../components/notes_card.dart';
import '../components/simple_page_header.dart';
import '../models/education.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const SimplePageHeader(
          title: 'experience',
          subtitle: 'places i have worked at.',
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: LineStyle(color: kWhiteBlackAccentByTheme(context)),
          indicatorStyle: IndicatorStyle(
            color: kWhiteBlackAccentByTheme(context),
            height: 40,
            width: 40,
            iconStyle: IconStyle(
              color: kWhiteBlackAccentByTheme(context, invert: true),
              iconData: Icons.star_rounded,
            ),
          ),
          isFirst: true,
        ),
        ExperienceCard(
          borderOverride: kWhiteBlackAccentByTheme(context),
          experience: Experience(
              color: Color(0xFF2a2a2a),
              companyName: 'Gradium',
              duration: '1 mo',
              companyPicture: 'assets/gradium.png',
              role: 'Founder & Tech Guy'),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: false,
          beforeLineStyle: const LineStyle(color: Color(0xFF585DFF)),
        ),
        const ExperienceCard(
          experience: Experience(
              color: Color(0xFF585DFF),
              companyName: 'Classify',
              duration: '7 mo',
              companyPicture: 'assets/classify.png',
              role: 'Development Lead'),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: const LineStyle(color: Color(0xFF585DFF)),
          indicatorStyle: IndicatorStyle(
            color: Color(0xFF585DFF),
            height: 40,
            width: 40,
            iconStyle: IconStyle(
              color: Colors.white,
              iconData: Icons.keyboard_double_arrow_up_rounded,
            ),
          ),
        ),
        const ExperienceCard(
          experience: Experience(
              color: Color(0xFF585DFF),
              duration: '9 mo',
              companyName: 'Classify',
              companyPicture: 'assets/classify.png',
              role: 'Flutter Developer'),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: const LineStyle(color: Color(0xFF585DFF)),
          afterLineStyle: const LineStyle(color: Colors.blueAccent),
          indicatorStyle: IndicatorStyle(
            color: Colors.blueAccent,
            height: 35,
            width: 35,
            iconStyle: IconStyle(
              color: Colors.white,
              iconData: Icons.check,
            ),
          ),
        ),
        const ExperienceCard(
          experience: Experience(
              color: Colors.blueAccent,
              duration: '3 mo',
              companyName: 'Witblox',
              companyPicture: 'assets/classify.png',
              role: 'Content Creation Intern'),
        ),
        const PageEndSpacer(),
      ],
    ));
  }
}
