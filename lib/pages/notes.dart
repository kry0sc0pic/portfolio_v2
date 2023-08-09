import 'package:flutter/material.dart';

import '../components/end_spacer.dart';
import '../components/notes_card.dart';
import '../components/simple_page_header.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        SimplePageHeader(
          title: 'notes',
          subtitle: 'stories, tips, guides and learnings.',
        ),
        Wrap(
          runAlignment: WrapAlignment.start,
          alignment: WrapAlignment.start,
          spacing: 20,
          runSpacing: 20,
          children: [
            NotesCard(
                title: 'Finetune Stable Diffusion with Dreambooth',
                tag: 'AI/ML',
                image: 'assets/finetuning_with_stable_diffusion.png'),
          ],
        ),
        PageEndSpacer()
      ],
    ));
  }
}
