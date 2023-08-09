import 'package:flutter/material.dart';
import 'package:portfolio2/themes.dart';

class NoteTag extends StatelessWidget {
  const NoteTag({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(32)),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        text,
        style: kSpaceMonoTextStyle(context)
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
