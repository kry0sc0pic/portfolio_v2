import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:portfolio2/themes.dart';

class AwardTag extends StatelessWidget {
  const AwardTag({super.key, required this.awardCount});
  final int awardCount;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(32)),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            Icon(
              PhosphorIcons.trophy_fill,
              color: Colors.yellowAccent,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              awardCount <= 9 ? '$awardCount' : '9+',
              style: kSpaceMonoTextStyle(context)
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
