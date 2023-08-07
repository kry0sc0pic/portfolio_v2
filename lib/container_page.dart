import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/pages/notes.dart';
import 'package:portfolio2/pages/profile.dart';
import 'package:portfolio2/themes.dart';
import 'package:random_text_reveal/random_text_reveal.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:translucent_navigation_bar/translucent_navigation_bar.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  final List<Widget> _pages = [
    ProfilePage(),
    NotesPage(),
  ];
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: RandomTextReveal(
          duration: Duration(seconds: 3),

          text: 'Krishaay Jois',
          randomString: "Krishaay Jois",
          style: kNeonFutureTextStyle(context)
              .copyWith(fontWeight: FontWeight.bold),
          shouldPlayOnStart: true,

          // curve: Curves.linear,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                width: 100,
                child: DayNightSwitch(
                  onChanged: (isDark) {
                    ThemeProvider.controllerOf(context).nextTheme();
                  },
                  value: ThemeProvider.themeOf(context).id == 'night',
                ),
              ),
            ]),
          ),
        ],
        elevation: 0,
      ),
      bottomNavigationBar: SizedBox(
        width: 20,
        child: TranslucentNavigationBar(
          selectedIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            _pageController.animateToPage(
              _currentIndex,
              duration: const Duration(milliseconds: 750),
              curve: Curves.fastLinearToSlowEaseIn,
            );
          },
          items: [
            TranslucentNavigationBarItem(
              iconData: Icons.person,
            ),
            TranslucentNavigationBarItem(
              iconData: Icons.notes,
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
    );
  }
}
