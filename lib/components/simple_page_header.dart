import 'package:flutter/material.dart';

import '../themes.dart';

class SimplePageHeader extends StatelessWidget {
  const SimplePageHeader(
      {super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 100,
        ),
        Text(title,
            style: kEpilogueTextStyle(context)
                .copyWith(fontSize: 40, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        Text(
          subtitle,
          style:
              kEpilogueTextStyle(context, opacity: 0.5).copyWith(fontSize: 24),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
