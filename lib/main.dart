import 'package:flutter/material.dart';
import 'package:portfolio2/container_page.dart';
import 'package:portfolio2/pages/profile.dart';
import 'package:portfolio2/themes.dart';
import 'package:theme_provider/theme_provider.dart';

void main(List<String> args) {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      defaultThemeId: 'night',
      themes: [kDayTheme, kNightTheme],
      child: ThemeConsumer(
        child: Builder(
            builder: (themeContext) => MaterialApp(
                  initialRoute: '/',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeProvider.themeOf(themeContext).data,
                  routes: {
                    '/': (context) => const ContainerPage(),
                    '/profile': (context) => const ProfilePage(),
                    '/notes': (context) => const ProfilePage(),
                  },
                )),
      ),
    );
  }
}
