import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/error_widget.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MostViewedArticleBloc mockBloc;

  setUpAll(() {
    mockBloc = MockMostViewedArticleBloc();
    registerFallbackValue(const GetMostViewedArticlesEvent());
  });

  testWidgets('CustomErrorWidget displays error and tapping refresh triggers the bloc event',
      (WidgetTester tester) async {
    const testError = 'Test error message';

    await tester.pumpApp(widget: const CustomErrorWidget(error: testError), bloc: mockBloc);

    expect(find.text(testError), findsOneWidget);

    final refreshIcon = find.byIcon(Icons.refresh);
    expect(refreshIcon, findsOneWidget);

    await tester.tap(refreshIcon);
    verify(() => mockBloc.add(const GetMostViewedArticlesEvent())).called(1);

    await tester.pumpAndSettle();
  });
}
