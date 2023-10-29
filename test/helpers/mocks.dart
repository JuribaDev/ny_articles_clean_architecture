import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/network/network_manager.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/data_sources/article_remote_data_source.dart';

class MockApiClient extends Mock implements ArticleRemoteDataSource {}

class MockNetworkManager extends Mock implements NetworkManager {}

class MockLogger extends Mock implements Logger {}

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response<dynamic> {}
