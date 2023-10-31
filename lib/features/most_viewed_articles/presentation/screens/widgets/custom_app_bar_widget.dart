import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';

class CustomAppBar extends HookWidget implements PreferredSizeWidget {
  const CustomAppBar(this.articles, {super.key});

  final List<ArticleEntity> articles;

  @override
  Widget build(BuildContext context) {
    final isSearching = useState<bool>(false);
    final search = useTextEditingController();

    return BlocBuilder<MostViewedArticleBloc, MostViewedArticleState>(
      builder: (context, state) {
        return AppBar(
          title: isSearching.value
              ? TextFormField(
                  controller: search,
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                  onChanged: (val) =>
                      context.read<MostViewedArticleBloc>().add(SearchMostViewedArticlesEvent(val, articles)),
                )
              : const Text('NY Most Popular Articles'),
          actions: [
            if (!isSearching.value)
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            IconButton(
              icon: Icon(isSearching.value ? Icons.close : Icons.search),
              onPressed: () {
                if (isSearching.value) {
                  context.read<MostViewedArticleBloc>().add(const GetMostViewedArticlesEvent());
                }
                isSearching.value = !isSearching.value;
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
