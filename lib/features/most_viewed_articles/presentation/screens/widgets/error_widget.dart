import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({required this.error, super.key});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(error),
            IconButton(
                onPressed: () => context.read<MostViewedArticleBloc>().add(const GetMostViewedArticlesEvent()),
                icon: const SizedBox(width: 50, child: Icon(Icons.refresh)))
          ],
        ),
      ),
    );
  }
}
