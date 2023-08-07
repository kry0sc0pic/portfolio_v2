import 'package:flutter/material.dart';
import 'package:portfolio2/themes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("WIP :)",
          style: kEpilogueTextStyle(context)
              .copyWith(fontWeight: FontWeight.bold, fontSize: 40)),
    );
  }
}
