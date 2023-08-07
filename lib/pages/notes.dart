import 'package:flutter/material.dart';
import 'package:portfolio2/themes.dart';

import '../components/notes_card.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Text("notes",
            style: kEpilogueTextStyle(context)
                .copyWith(fontSize: 40, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        Text(
          "stories, tips, guides, and more.",
          style:
              kEpilogueTextStyle(context, opacity: 0.5).copyWith(fontSize: 24),
        ),
        SizedBox(
          height: 20,
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
