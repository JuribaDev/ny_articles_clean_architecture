import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_articles_clean_architecture/core/widgets/responsive_layout_wrapper.dart';
import 'package:ny_articles_clean_architecture/features/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:ny_articles_clean_architecture/features/screens/mobile_portrait/most_viewed_articles_mobile_portrait_view.dart';
import 'package:ny_articles_clean_architecture/injection_container.dart';

class MostViewedArticlesScreen extends StatelessWidget {
  const MostViewedArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MostViewedArticleBloc>(
      create: (context) => sl()..add(const GetMostViewedArticlesEvent()),
      child: ResponsiveLayoutWrapper(
        mobilePortraitLayout: const MostViewedArticlesMobilePortraitView(),
        mobileLandscapeLayout: _placeholder('Tablet Portrait'),
        tabletPortraitLayout: _placeholder('Tablet Portrait'),
        tabletLandscapeLayout: _placeholder('Tablet Landscape'),
        desktopLayout: _placeholder('Desktop'),
      ),
    );
  }

  Widget _placeholder(String text) => Scaffold(
        body: Center(
          child: Text(text),
        ),
      );
}
