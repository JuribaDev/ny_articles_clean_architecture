import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/core/constants/network.dart';

void main() {
  group('Configuration constants', () {
    test('Timeout is 30 seconds', () {
      expect(timeout, const Duration(seconds: 30));
    });

    test('Retries is set to 5', () {
      expect(retries, 5);
    });

    test('Retry delays are as expected', () {
      expect(retryDelays, [
        const Duration(seconds: 1),
        const Duration(seconds: 3),
        const Duration(seconds: 5),
        const Duration(seconds: 7),
        const Duration(seconds: 9),
      ]);
    });

    test('Base URL is correct', () {
      expect(baseUrl, 'https://api.nytimes.com/');
    });

    test('API key is set', () {
      expect(apiKey, 'bcvHicFlnhxVBfwVPM5eOT5Ox5ZdVM0u');
    });
  });

  group('Endpoint generation', () {
    test('Generates correct endpoint for most viewed articles', () {
      const period = 7;
      const expectedUrl = 'svc/mostpopular/v2/mostviewed/all-sections/$period.json?api-key=$apiKey';

      expect(mostViewedArticlesEndpoint(period), expectedUrl);
    });
  });
}
