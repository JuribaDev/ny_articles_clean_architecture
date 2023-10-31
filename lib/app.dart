import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_articles_clean_architecture/config/theme/color_scheme.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/most_viewed_articles_screen.dart';
import 'package:ny_articles_clean_architecture/injection_container.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MostViewedArticleBloc>(
      create: (context) => sl()..add(const GetMostViewedArticlesEvent()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
          darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          themeMode: ThemeMode.dark,
          home: const MostViewedArticlesScreen()),
    );
  }
}
