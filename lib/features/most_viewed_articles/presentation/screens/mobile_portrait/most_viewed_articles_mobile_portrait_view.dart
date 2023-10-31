import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/article_card_widget.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/articles_loading_widget.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/custom_app_bar_widget.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/error_widget.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/filter_widget.dart';

class MostViewedArticlesMobilePortraitView extends HookWidget {
  const MostViewedArticlesMobilePortraitView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<MostViewedArticleBloc, MostViewedArticleState>(
        builder: (context, state) {
          if (state is MostViewedArticleLoadingState) return const ArticlesLoadingWidget();

          if (state is MostViewedArticleErrorState) {
            return CustomErrorWidget(
              error: state.error,
            );
          }

          if (state is MostViewedArticleIsLoadedState) {
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () =>
                    showModalBottomSheet(context: context, builder: (BuildContext context) => const FilterWidget()),
                child: const Icon(Icons.filter_list_alt),
              ),
              appBar: CustomAppBar(state.articles),
              body: RefreshIndicator(
                onRefresh: () async => context.read<MostViewedArticleBloc>().add(const GetMostViewedArticlesEvent()),
                child: ListView.separated(
                  itemCount: state.articles.length,
                  itemBuilder: (context, index) => ArticleCardWidget(
                    article: state.articles[index],
                  ),
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
