import 'package:flutter/material.dart';

import '../models/project.dart';
import '../themes.dart';
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
        padding: EdgeInsets.all(
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
              image: AssetImage('assets/placeholder.jpg'),
              fit: BoxFit.cover,
              colorFilter: !isHovering
                  ? ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken)
                  : null,
            ),
            color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [NoteTag(text: widget.project.tag)],
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
