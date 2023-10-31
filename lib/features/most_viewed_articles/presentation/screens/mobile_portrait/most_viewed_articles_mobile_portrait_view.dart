import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/article_card_widget.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/shimmers.dart';

class MostViewedArticlesMobilePortraitView extends HookWidget {
  const MostViewedArticlesMobilePortraitView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('NY Most Popular Articles'),
          leading: HookBuilder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () => {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => {},
            ),
          ],
        ),
        body: BlocBuilder<MostViewedArticleBloc, MostViewedArticleState>(builder: (context, state) {
          if (state is MostViewedArticleLoadingState) {
            return articlesLoading(context);
          }
          if (state is MostViewedArticleErrorState) {
            return const Scaffold(body: Center(child: Icon(Icons.refresh)));
          }
          if (state is MostViewedArticleIsLoadedState) {
            return SafeArea(
              child: Scaffold(
                body: RefreshIndicator(
                  onRefresh: () async =>
                      context.read<MostViewedArticleBloc>().add(const GetMostViewedArticlesEvent(period: 7)),
                  child: ListView.separated(
                    itemCount: state.articles.length,
                    itemBuilder: (context, index) => ArticleCardWidget(
                      article: state.articles[index],
                    ),
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                  ),
                ),
              ),
            );
          }
          return const SizedBox();
        }),
      ),
    );
  }
}
