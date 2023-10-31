import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:intl/intl.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/entities/article_entity.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/article_detail_widget.dart';

class ArticleCardWidget extends StatelessWidget {
  const ArticleCardWidget({required this.article, super.key});

  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    final hasImage = article.listMediaResponseModel.isNotEmpty;
    return ListTile(
      onTap: () => showModalBottomSheet(
          context: context, builder: (BuildContext context) => ArticleDetailWidget(article: article)),
      isThreeLine: true,
      title: Text(
        article.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              article.byline,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(DateFormat('yyy-MM-dd').format(article.publishedDate))
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      leading: hasImage
          ? Padding(
              padding: const EdgeInsets.all(4),
              child: CachedNetworkImage(
                imageUrl: article.listMediaResponseModel.first.mediaMetadata.first.url,
                placeholder: (context, url) => Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                cacheManager: CacheManager(
                  Config(
                    'customCacheKey',
                    stalePeriod: const Duration(days: 7),
                  ),
                ),
                errorWidget: (context, url, error) => const Padding(
                  padding: EdgeInsets.all(4),
                  child: SizedBox(width: 60, height: 60, child: Icon(Icons.image_not_supported)),
                ),
                imageBuilder: (context, imageProvider) => Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(4),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
    );
  }
}
