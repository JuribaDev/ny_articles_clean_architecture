import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleDetailWidget extends StatelessWidget {
  const ArticleDetailWidget({required this.article, super.key});

  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Icon(
                Icons.remove,
              ),
            ), // Icon at the top
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            Text(
              article.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              article.byline,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              DateFormat('yyy-MM-dd').format(article.publishedDate),
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              article.abstract,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 18),
            ),
            const Expanded(child: SizedBox(height: 8)),
            SizedBox(
                width: double.infinity * 0.9,
                height: 50,
                child: FilledButton(
                    onPressed: () async => await launchUrl(Uri.parse(article.url)),
                    child: const Text(
                      'Read The Article',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )))
          ],
        ),
      ),
    );
  }
}
