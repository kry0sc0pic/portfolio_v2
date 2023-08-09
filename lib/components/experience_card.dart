import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import '../models/experience.dart';
import '../themes.dart';

class ExperienceCard extends StatefulWidget {
  const ExperienceCard(
      {super.key,
      required this.experience,
      this.borderOverride,
      this.gradient});
  final Experience experience;
  final Color? borderOverride;
  final LinearGradient? gradient;
  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        tileColor: kWhiteBlackAccentByTheme(context, opacity: 0.15),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: (widget.borderOverride ?? widget.experience.color)
                  .withOpacity(1),
              width: 4),
          borderRadius: BorderRadius.circular(20),
        ),
        trailing: Text(widget.experience.duration,
            style: kSpaceMonoTextStyle(context)
                .copyWith(fontWeight: FontWeight.bold)),
        title: Text(widget.experience.companyName,
            style: kManropeTextStyle(context)
                .copyWith(fontWeight: FontWeight.bold, letterSpacing: 0.2)),
        visualDensity: VisualDensity.comfortable,
        subtitle: Text(widget.experience.role,
            style: kManropeTextStyle(context, opacity: 0.7)),
        leading: CircleAvatar(
            backgroundColor: widget.experience.color,
            child: Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: widget.gradient ??
                    LinearGradient(colors: [
                      widget.experience.color,
                      widget.experience.color
                    ]),
              ),
              child: widget.experience.companyPicture == null
                  ? Icon(PhosphorIcons.buildings,
                      color: kWhiteBlackAccentByTheme(context))
                  : Image.asset(
                      widget.experience.companyPicture!,
                      width: 25,
                      height: 25,
                    ),
            )

            // foregroundImage: Ass,
            ),
      ),
    );
  }
}
