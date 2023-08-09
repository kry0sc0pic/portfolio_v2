import 'package:flutter/material.dart';
import 'package:portfolio2/components/experience_card.dart';
import 'package:portfolio2/models/experience.dart';
import 'package:portfolio2/themes.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../components/end_spacer.dart';
import '../components/simple_page_header.dart';

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
              iconData: Icons.star_outline_rounded,
            ),
          ),
          isFirst: true,
        ),
        ExperienceCard(
          borderOverride: kWhiteBlackAccentByTheme(context),
          experience: const Experience(
              color: Color(0xFF2a2a2a),
              companyName: 'Gradium',
              duration: 'Jul 2023 - Today',
              companyPicture: 'assets/gradium.png',
              role: 'Founder & Tech Guy'),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: false,
          beforeLineStyle: const LineStyle(color: Color(0xffF157FF)),
        ),
        const ExperienceCard(
          gradient:
              LinearGradient(colors: [Color(0xFF585DFF), Color(0xffF157FF)]),
          experience: Experience(
              color: Color(0xffF157FF),
              companyName: 'Classify',
              duration: 'Dec 2022 - Today',
              companyPicture: 'assets/classify.png',
              role: 'Development Lead'),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: const LineStyle(color: Color(0xffF157FF)),
          indicatorStyle: IndicatorStyle(
            color: const Color(0xffF157FF),
            height: 40,
            width: 40,
            iconStyle: IconStyle(
              color: Colors.white,
              iconData: Icons.keyboard_double_arrow_up_rounded,
            ),
          ),
        ),
        const ExperienceCard(
          gradient:
              LinearGradient(colors: [Color(0xFF585DFF), Color(0xffF157FF)]),
          experience: Experience(
              color: Color(0xffF157FF),
              duration: 'Apr - Dec 2022',
              companyName: 'Classify',
              companyPicture: 'assets/classify.png',
              role: 'Flutter Developer'),
        ),
        TimelineTile(
          alignment: TimelineAlign.center,
          hasIndicator: true,
          beforeLineStyle: const LineStyle(color: Color(0xFF7555B9)),
          afterLineStyle: const LineStyle(color: Color(0xFF7555B9)),
          indicatorStyle: IndicatorStyle(
            color: const Color(0xFF7555B9),
            height: 35,
            width: 35,
            iconStyle: IconStyle(
              color: Colors.white,
              iconData: Icons.check_circle_outline_rounded,
            ),
          ),
        ),
        const ExperienceCard(
          borderOverride: Color(0xFF7555B9),
          experience: Experience(
              color: Colors.white,
              duration: 'Apr - Jun 2018',
              companyName: 'Witblox',
              companyPicture: 'assets/witblox.png',
              role: 'Content Creation Intern'),
        ),
        const PageEndSpacer(),
      ],
    ));
  }
}
