import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/filter_widget.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MostViewedArticleBloc mockBloc;

  setUpAll(() {
    mockBloc = MockMostViewedArticleBloc();
    registerFallbackValue(const GetMostViewedArticlesEvent());
  });

  testWidgets('FilterWidget displays chips and tapping them triggers the correct event', (WidgetTester tester) async {
    await tester.pumpApp(bloc: mockBloc, widget: const FilterWidget());

    final todayChip = find.widgetWithText(FilterChip, 'Today');
    final lastWeekChip = find.widgetWithText(FilterChip, 'Last Week');
    final lastMonthChip = find.widgetWithText(FilterChip, 'Last Month');

    expect(todayChip, findsOneWidget);
    expect(lastWeekChip, findsOneWidget);
    expect(lastMonthChip, findsOneWidget);

    await tester.tap(todayChip);
    verify(() => mockBloc.add(const GetMostViewedArticlesEvent(period: 1))).called(1);

    await tester.pumpAndSettle();
  });
}
