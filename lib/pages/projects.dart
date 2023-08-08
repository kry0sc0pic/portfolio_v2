import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

import '../components/notes_card.dart';
import '../components/project_card.dart';
import '../components/simple_page_header.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const SimplePageHeader(
          title: 'projects',
          subtitle: 'stuff i have built.',
        ),
        Wrap(
            runAlignment: WrapAlignment.start,
            alignment: WrapAlignment.start,
            spacing: 20,
            runSpacing: 20,
            children: [
              ProjectCard(
                project: Project(
                    name: "OpenDex",
                    image: '',
                    description: "ChatGPT for Pokemon.",
                    tag: "GenAI"),
              ),
              ProjectCard(
                project: Project(
                    name: "Knox",
                    image: '',
                    description:
                        "Contactless Payment App powered by Quantum Key Distribution.",
                    tag: "Quantum"),
              ),
              ProjectCard(
                project: Project(
                    name: "Alkyne",
                    image: '',
                    description:
                        "App to help students with chemistry conversion problems.",
                    tag: "Chemistry"),
              ),
              ProjectCard(
                project: Project(
                    name: "Cypher",
                    image: '',
                    description:
                        "Discord bot to see which friends are online on Valorant.",
                    tag: "Discord Bot"),
              ),
              //TODO: add more
            ])
      ],
    ));
  }
}
