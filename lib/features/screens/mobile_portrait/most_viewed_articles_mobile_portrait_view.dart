import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ny_articles_clean_architecture/features/presentation/bloc/most_viewed_article_bloc.dart';

class MostViewedArticlesMobilePortraitView extends HookWidget {
  const MostViewedArticlesMobilePortraitView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<MostViewedArticleBloc, MostViewedArticleState>(builder: (_, state) {
        if (state is MostViewedArticleLoading) {
          return const Scaffold(body: Center(child: CircularProgressIndicator.adaptive()));
        }
        if (state is MostViewedArticleError) {
          return const Scaffold(body: Center(child: Icon(Icons.refresh)));
        }
        if (state is MostViewedArticleIsLoaded) {
          return SafeArea(
            child: Scaffold(
              body: ListView.builder(
                itemCount: state.articles.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(state.articles[index].title),
                ),
              ),
            ),
          );
        }
        return const SizedBox();
      }),
    );
  }
}
