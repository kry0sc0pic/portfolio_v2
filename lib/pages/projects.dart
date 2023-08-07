import 'package:flutter/material.dart';

import '../components/notes_card.dart';
import '../components/simple_page_header.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        SimplePageHeader(
          title: 'projects',
          subtitle: 'stuff i have built.',
        ),
        Wrap(
          runAlignment: WrapAlignment.start,
          alignment: WrapAlignment.start,
          spacing: 20,
          runSpacing: 20,
          children: [
            NotesCard(title: 'Note 1'),
            // NotesCard(title: 'Note 2'),
            // NotesCard(title: 'Note 3'),
            // NotesCard(title: 'Note 4'),
            // NotesCard(title: 'Note 5'),
            // NotesCard(title: 'Note 6'),
            // NotesCard(title: 'Note 7'),
            // NotesCard(title: 'Note 8'),
          ],
        )
      ],
    ));
  }
}
