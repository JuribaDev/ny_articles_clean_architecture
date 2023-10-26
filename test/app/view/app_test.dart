import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/app/app.dart';
import 'package:ny_articles_clean_architecture/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
