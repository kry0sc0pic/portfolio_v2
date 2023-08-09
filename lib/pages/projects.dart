import 'package:flutter/material.dart';
import 'package:portfolio2/models/project.dart';

import '../components/end_spacer.dart';
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
                    name: "Mercurius (WIP)",
                    description:
                        "CLI Tool which saves time by notifying you when commands finish.",
                    image: 'assets/mercurius.png',
                    tag: "Productivity"),
              ),
              ProjectCard(
                project: Project(
                    name: "OpenDex",
                    description: "ChatGPT for Pokemon.",
                    image: 'assets/opendex.png',
                    tag: "GenAI"),
              ),
              ProjectCard(
                project: Project(
                    name: "Knox",
                    image: 'assets/knox.png',
                    description:
                        "Contactless Payment App powered by Quantum Key Distribution.",
                    tag: "Quantum"),
              ),
              ProjectCard(
                project: Project(
                    name: "Alkyne",
                    image: 'assets/alkyne.png',
                    description:
                        "App to help students with chemistry conversion problems.",
                    tag: "Chemistry"),
              ),
              ProjectCard(
                project: Project(
                    name: "God's Eye (Patent Pending)",
                    image: 'assets/godseye.png',
                    awardCount: 3,
                    description:
                        "Identifies counterfeit vehicles and notifies law enforcement in realtime.",
                    tag: "Computer Vision"),
              ),
              ProjectCard(
                project: Project(
                    name: "Cypher",
                    image: 'assets/cypher.png',
                    description:
                        "Discord bot to see which friends are online on Valorant.",
                    tag: "Discord Bot"),
              ),
              ProjectCard(
                project: Project(
                    name: "MaskUp!",
                    awardCount: 1,
                    image: 'assets/maskup.png',
                    description:
                        "App to identify people not wearing masks and warn them.",
                    tag: "Computer Vision"),
              ),
              ProjectCard(
                project: Project(
                    name: "SeWA App",
                    awardCount: 1,
                    image: 'assets/sewa.png',
                    description:
                        "App to help people dispose their eWaste safely from home.",
                    tag: "ITFest '21"),
              ),
            ]),
        const PageEndSpacer()
      ],
    ));
  }
}
