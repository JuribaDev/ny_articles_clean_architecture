import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          const Icon(
            Icons.remove,
          ), // Icon at the top
          const Divider(),
          const SizedBox(
            height: 5,
          ),
          Wrap(
            spacing: 10, // Spacing between chips
            children: [
              FilterChip(
                label: const Text('Today'),
                onSelected: (bool value) {
                  context.read<MostViewedArticleBloc>().add(const GetMostViewedArticlesEvent(period: 1));
                  Navigator.of(context).pop();
                },
              ),
              FilterChip(
                label: const Text('Last Week'),
                onSelected: (bool value) {
                  context.read<MostViewedArticleBloc>().add(const GetMostViewedArticlesEvent(period: 7));
                  Navigator.of(context).pop();
                },
              ),
              FilterChip(
                label: const Text('Last Month'),
                onSelected: (bool value) {
                  context.read<MostViewedArticleBloc>().add(const GetMostViewedArticlesEvent());
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
