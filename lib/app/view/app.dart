import 'package:flutter/material.dart';
import 'package:ny_articles_clean_architecture/config/theme/color_scheme.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/most_viewed_articles_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        home: const MostViewedArticlesScreen());
  }
}
