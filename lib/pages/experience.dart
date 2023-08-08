import 'package:flutter/material.dart';

import '../components/end_spacer.dart';
import '../components/notes_card.dart';
import '../components/simple_page_header.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        SimplePageHeader(
          title: 'experience',
          subtitle: 'places i have worked at.',
        ),
        PageEndSpacer(),
      ],
    ));
  }
}
