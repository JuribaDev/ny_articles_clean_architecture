// ignore_for_file: cascade_invocations

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/core/constants/network.dart';
import 'package:ny_articles_clean_architecture/core/network/network_manager.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/data_sources/article_remote_data_source.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/repositories/article_repository_imp.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/repositories/article_repository_interface.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/user_cases/get_most_viewed_articles.dart';
import 'package:ny_articles_clean_architecture/features/presentation/bloc/most_viewed_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies(Logger logger) async {
  // Logger
  sl.registerSingleton<Logger>(logger);
  // Dio
  sl.registerSingleton<Dio>(Dio());
  // RetryInterceptor
  sl.registerSingleton<RetryInterceptor>(RetryInterceptor(dio: sl(), retries: retries, retryDelays: retryDelays));
  // NetworkManager
  sl.registerSingleton(NetworkManager(dio: sl(), baseUrl: baseUrl, retryInterceptor: sl()));

  /// Most Viewed Articles Feature

  // ArticleRemoteDataSource
  sl.registerSingleton<ArticleRemoteDataSource>(ArticleRemoteDataSource(sl(), sl()));
  // ArticleRepository
  sl.registerSingleton<ArticleRepositoryInterface>(ArticleRepositoryImp(
    sl(),
  ));
  // GetMostViewedArticles Use Case
  sl.registerSingleton<GetMostViewedArticlesUseCase>(GetMostViewedArticlesUseCase(
    sl(),
  ));

  // GetMostViewedArticles Bloc
  sl.registerFactory<MostViewedArticleBloc>(() => MostViewedArticleBloc(sl()));
}
