// ignore_for_file: inference_failure_on_function_invocation

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/core/error_handling/non_user_viewable_exception.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/data_sources/article_remote_data_source.dart';

import '../../../../../../../helpers/helpers.dart';
import '../../../../../../../helpers/mocks.dart';

void main() {
  late ArticleRemoteDataSource articleRemoteDataSource;
  late MockNetworkManager mockNetworkManager;
  late MockDio mockDio;
  late MockLogger mockLogger;
  late MockResponse mockResponse;

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    mockResponse = MockResponse();
    mockDio = MockDio();
    mockLogger = MockLogger();
    when(() => mockNetworkManager.dio).thenReturn(mockDio);
    when(() => mockResponse.requestOptions).thenReturn(RequestOptions(path: 'dummy_path'));

    articleRemoteDataSource = ArticleRemoteDataSource(mockNetworkManager, mockLogger);
  });

  group('getMostViewedArticle tests', () {
    test('Returns a list of ArticleResponseModel when request succeeds', () async {
      when(() => mockResponse.data).thenReturn({
        'status': 'OK',
        'results': [articleResponseJsonTest]
      });
      when(() => mockResponse.statusCode).thenReturn(200);
      when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);

      final result = await articleRemoteDataSource.getMostViewedArticle(7);

      expect(result, [articleResponseModelTest]);
    });

    test('Throws DioException when request fails', () {
      when(() => mockDio.get(any())).thenThrow(DioException(requestOptions: RequestOptions()));

      expect(() => articleRemoteDataSource.getMostViewedArticle(7), throwsA(isA<NonUserViewableException>()));
      verify(() => mockLogger.e(any(), error: any(named: 'error'), stackTrace: any(named: 'stackTrace'))).called(2);
    });
    test('Throws Unexpected Exception when request fails', () {
      when(() => mockDio.get(any())).thenThrow(Exception());

      expect(() => articleRemoteDataSource.getMostViewedArticle(7), throwsA(isA<NonUserViewableException>()));
      verify(() => mockLogger.e(any(), error: any(named: 'error'), stackTrace: any(named: 'stackTrace'))).called(2);
    });
  });
}
