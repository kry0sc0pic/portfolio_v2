import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../themes.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon(
      {super.key, this.color, required this.link, required this.icon});

  final Color? color;
  final String link;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final Uri uri = Uri.parse(link);

    return GestureDetector(
      onTap: () async {
        await launchUrl(uri, webOnlyWindowName: '_blank');
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Icon(
          icon,
          color: color ?? kWhiteBlackAccentByTheme(context, opacity: 1),
        ),
      ),
    );
  }
}
