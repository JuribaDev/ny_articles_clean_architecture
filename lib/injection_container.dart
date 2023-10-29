// ignore_for_file: cascade_invocations

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:ny_articles_clean_architecture/core/constants/network.dart';
import 'package:ny_articles_clean_architecture/core/network/network_manager.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/data_sources/article_remote_data_source.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Logger
  sl.registerSingleton<Logger>(Logger());
  // Dio
  sl.registerSingleton<Dio>(Dio());
  // RetryInterceptor
  sl.registerSingleton<RetryInterceptor>(RetryInterceptor(dio: sl(), retries: retries, retryDelays: retryDelays));
  // NetworkManager
  sl.registerSingleton(NetworkManager(dio: sl(), baseUrl: baseUrl, retryInterceptor: sl()));
  // ApiClient
  sl.registerSingleton<ArticleRemoteDataSource>(ArticleRemoteDataSource(sl(), sl()));
}
