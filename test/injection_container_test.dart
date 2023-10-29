import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/core/network/network_manager.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/data_sources/article_remote_data_source.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/repositories/article_repository_imp.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/repositories/article_repository_interface.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/user_cases/get_most_viewed_articles.dart';
import 'package:ny_articles_clean_architecture/injection_container.dart';
import 'package:test/test.dart';

import 'helpers/mocks.dart';

void main() {
  final sl = GetIt.instance;
  late MockLogger logger;

  setUpAll(() async {
    logger = MockLogger();
    await initializeDependencies(logger);
  });

  group('Dependency Injection Tests', () {
    test('should register Logger', () {
      final instance = sl<Logger>();
      expect(instance, isNotNull);
      expect(instance, isA<Logger>());
    });

    test('should register Dio', () {
      final instance = sl<Dio>();
      expect(instance, isNotNull);
      expect(instance, isA<Dio>());
    });

    test('should register RetryInterceptor', () {
      final instance = sl<RetryInterceptor>();
      expect(instance, isNotNull);
      expect(instance, isA<RetryInterceptor>());
    });

    test('should register NetworkManager', () {
      final instance = sl<NetworkManager>();
      expect(instance, isNotNull);
      expect(instance, isA<NetworkManager>());
    });

    test('should register ArticleRemoteDataSource', () {
      final instance = sl<ArticleRemoteDataSource>();
      expect(instance, isNotNull);
      expect(instance, isA<ArticleRemoteDataSource>());
    });

    test('should register ArticleRepository', () {
      final instance = sl<ArticleRepositoryInterface>();
      expect(instance, isNotNull);
      expect(instance, isA<ArticleRepositoryImp>());
    });

    test('should register GetMostViewedArticlesUseCase', () {
      final instance = sl<GetMostViewedArticlesUseCase>();
      expect(instance, isNotNull);
      expect(instance, isA<GetMostViewedArticlesUseCase>());
    });
  });
}
