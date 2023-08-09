import 'package:flutter/material.dart';

import '../themes.dart';
import 'note_tag.dart';

class NotesCard extends StatefulWidget {
  const NotesCard({super.key, required this.title, this.tag, this.image});
  final String title;
  final String? tag;
  final String? image;
  @override
  State<NotesCard> createState() => _NotesCardState();
}

class _NotesCardState extends State<NotesCard> {
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
        width: 355.5,
        height: 200,
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
                image: AssetImage(widget.image ?? 'assets/placeholder.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(!isHovering ? 0.5 : 0.25),
                    BlendMode.darken)),
            color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.tag != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [NoteTag(text: widget.tag!)],
              )
            else
              const SizedBox.shrink(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.title,
                style: kManropeTextStyle(
                  context,
                ).copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
            )
          ],
        ),
      ),
    );
  }
}
