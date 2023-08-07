import 'package:flutter/material.dart';

import '../themes.dart';

class NavIcon extends StatelessWidget {
  const NavIcon(
      {super.key,
      required this.index,
      required this.currentIndex,
      required this.onTap,
      required this.icon});

  final int index;
  final int currentIndex;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (currentIndex == index) return;
        onTap();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Icon(
          icon,
          color: kWhiteBlackAccentByTheme(context,
              opacity: currentIndex == index ? 1 : 0.5),
        ),
      ),
    );
  }
}
