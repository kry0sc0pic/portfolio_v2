import 'dart:ui';

import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2/components/social_icon.dart';
import 'package:portfolio2/links.dart';
import 'package:portfolio2/pages/education.dart';
import 'package:portfolio2/pages/experience.dart';
import 'package:portfolio2/pages/notes.dart';
import 'package:portfolio2/pages/profile.dart';
import 'package:portfolio2/pages/projects.dart';
import 'package:portfolio2/themes.dart';
import 'package:random_text_reveal/random_text_reveal.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

import 'components/nav_icon.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  final List<Widget> _pages = [
    const ProfilePage(),
    const ProjectsPage(),
    const ExperiencePage(),
    const EducationPage(),
    const NotesPage(),
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
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 56.0),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: AppBar(
                // backgroundColor: ThemeProvider.themeOf(context).id == 'night'
                //     ? Colors.white.withOpacity(0.1)
                //     : Colors.black.withOpacity(0.1),
                backgroundColor: Colors.transparent,
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RandomTextReveal(
                      duration: const Duration(seconds: 3),

                      text: 'KRISHAAY JOIS',
                      style: kNeonFutureTextStyle(context)
                          .copyWith(fontWeight: FontWeight.bold),
                      shouldPlayOnStart: true,

                      // curve: Curves.linear,
                    ),
                    // SizedBox(
                    //   width: 20,
                    //   child: TranslucentNavigationBar(
                    //     selectedIndex: _currentIndex,
                    //     onTap: (value) {
                    //       setState(() {
                    //         _currentIndex = value;
                    //       });
                    //       _pageController.animateToPage(
                    //         _currentIndex,
                    //         duration: const Duration(milliseconds: 750),
                    //         curve: Curves.fastLinearToSlowEaseIn,
                    //       );
                    //     },
                    //     items: [
                    //       TranslucentNavigationBarItem(
                    //         iconData: Icons.person,
                    //       ),
                    //       TranslucentNavigationBarItem(
                    //         iconData: Icons.notes,
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
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
            ),
          ),
        ),
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: _pages,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5000),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      color: kWhiteBlackAccentByTheme(context, opacity: 0.15),
                      height: 300,
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SocialIcon(
                            link: SocialLinks.twitter,
                            icon: PhosphorIcons.twitter_logo,
                          ),
                          SocialIcon(
                            link: SocialLinks.linkedin,
                            icon: PhosphorIcons.linkedin_logo,
                          ),
                          SocialIcon(
                            link: SocialLinks.github,
                            icon: PhosphorIcons.github_logo,
                          ),
                          SocialIcon(
                            link: SocialLinks.youtube,
                            icon: PhosphorIcons.youtube_logo,
                          ),
                          SocialIcon(
                            link: SocialLinks.email,
                            icon: PhosphorIcons.envelope_simple,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5000),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      color: kWhiteBlackAccentByTheme(context, opacity: 0.15),
                      height: 50,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          NavIcon(
                            index: 0,
                            currentIndex: _currentIndex,
                            onTap: () {
                              setState(() {
                                _currentIndex = 0;
                              });
                              _pageController.animateToPage(
                                _currentIndex,
                                duration: const Duration(milliseconds: 750),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            },
                            icon: PhosphorIcons.user,
                          ),
                          NavIcon(
                            index: 1,
                            currentIndex: _currentIndex,
                            onTap: () {
                              setState(() {
                                _currentIndex = 1;
                              });
                              _pageController.animateToPage(
                                _currentIndex,
                                duration: const Duration(milliseconds: 750),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            },
                            icon: PhosphorIcons.code,
                          ),
                          NavIcon(
                            index: 2,
                            currentIndex: _currentIndex,
                            onTap: () {
                              setState(() {
                                _currentIndex = 2;
                              });
                              _pageController.animateToPage(
                                _currentIndex,
                                duration: const Duration(milliseconds: 750),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            },
                            icon: PhosphorIcons.briefcase,
                          ),
                          NavIcon(
                            index: 3,
                            currentIndex: _currentIndex,
                            onTap: () {
                              setState(() {
                                _currentIndex = 3;
                              });
                              _pageController.animateToPage(
                                _currentIndex,
                                duration: const Duration(milliseconds: 750),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            },
                            icon: PhosphorIcons.graduation_cap,
                          ),
                          NavIcon(
                            index: 4,
                            currentIndex: _currentIndex,
                            onTap: () {
                              setState(() {
                                _currentIndex = 4;
                              });
                              _pageController.animateToPage(
                                _currentIndex,
                                duration: const Duration(milliseconds: 750),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            },
                            icon: PhosphorIcons.note,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
