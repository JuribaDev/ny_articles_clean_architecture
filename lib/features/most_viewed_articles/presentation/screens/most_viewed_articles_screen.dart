import 'package:flutter/material.dart';
import 'package:ny_articles_clean_architecture/core/widgets/responsive_layout_wrapper.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/mobile_portrait/most_viewed_articles_mobile_portrait_view.dart';

class MostViewedArticlesScreen extends StatelessWidget {
  const MostViewedArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWrapper(
      mobilePortraitLayout: const MostViewedArticlesMobilePortraitView(),
      mobileLandscapeLayout: const MostViewedArticlesMobilePortraitView(),
      tabletPortraitLayout: _placeholder('Tablet Portrait'),
      tabletLandscapeLayout: _placeholder('Tablet Landscape'),
      desktopLayout: _placeholder('Desktop'),
    );
  }

  Widget _placeholder(String text) => Scaffold(
        body: Center(
          child: Text(text),
        ),
      );
}
