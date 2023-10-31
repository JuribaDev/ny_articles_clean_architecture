import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/network/network_manager.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/data_sources/article_remote_data_source.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/repositories/article_repository_interface.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/domain/user_cases/get_most_viewed_articles.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';

class MockApiClient extends Mock implements ArticleRemoteDataSource {}

class MockArticleRemoteDataSource extends Mock implements ArticleRemoteDataSource {}

class MockMostViewedArticleBloc extends MockBloc<MostViewedArticleEvent, MostViewedArticleState>
    implements MostViewedArticleBloc {}

class MockArticleRepositoryInterface extends Mock implements ArticleRepositoryInterface {}

class MockGetMostViewedArticlesUseCase extends Mock implements GetMostViewedArticlesUseCase {}

class MockNetworkManager extends Mock implements NetworkManager {}

class MockLogger extends Mock implements Logger {}

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response<dynamic> {}
