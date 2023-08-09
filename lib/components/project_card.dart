import 'package:flutter/material.dart';

import '../models/project.dart';
import '../themes.dart';
import 'award_tag.dart';
import 'note_tag.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) => {
        setState(() {
          isHovering = true;
        })
      },
      onExit: (event) => {
        setState(() {
          isHovering = false;
        })
      },
      child: Container(
        width: 533.25,
        height: 300,
        padding: const EdgeInsets.all(
          12,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            backgroundBlendMode: BlendMode.colorDodge,
            border: Border.all(
                color: isHovering
                    ? Colors.white.withOpacity(0.5)
                    : Colors.transparent,
                width: 1.5),
            image: DecorationImage(
                image: AssetImage(
                    widget.project.image ?? 'assets/placeholder.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(!isHovering ? 0.5 : 0.25),
                    BlendMode.darken)),
            color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (widget.project.awardCount != 0)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: AwardTag(
                      awardCount: widget.project.awardCount,
                    ),
                  ),
                NoteTag(text: widget.project.tag)
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.project.name,
                    style: kManropeTextStyle(
                      context,
                    ).copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.project.description,
                    style: kManropeTextStyle(
                      context,
                    ).copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.8)),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
