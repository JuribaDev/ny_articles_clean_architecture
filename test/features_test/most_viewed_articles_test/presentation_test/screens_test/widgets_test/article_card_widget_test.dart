import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/article_card_widget.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MostViewedArticleBloc mockBloc;

  setUpAll(() {
    mockBloc = MockMostViewedArticleBloc();
    registerFallbackValue(const GetMostViewedArticlesEvent());
  });

  testWidgets(
      'ArticleCardWidget displays article title, byline, and a CachedNetworkImage', (WidgetTester tester) async {
    await tester.pumpApp(widget: ArticleCardWidget(article: articleEntityTest), bloc: mockBloc);

    expect(find.text('From Bush v. Gore to ‘Stop the Steal’: Kenneth Chesebro’s Long, Strange Trip'), findsOneWidget);
    expect(find.text('By Elizabeth Williamson'), findsOneWidget);

    final image = find.byType(CachedNetworkImage);
    expect(image, findsOneWidget);

    await tester.pumpAndSettle();
  });
  testWidgets('ArticleCardWidget displays default container when no image is present', (WidgetTester tester) async {
    await tester.pumpApp(widget: ArticleCardWidget(article: articleEntityWithoutImagesTest), bloc: mockBloc);

    expect(find.text('From Bush v. Gore to ‘Stop the Steal’: Kenneth Chesebro’s Long, Strange Trip'), findsOneWidget);
    expect(find.text('By Elizabeth Williamson'), findsOneWidget);

    final defaultImage = find.byWidgetPredicate((widget) => widget is Padding && widget.child is Container);
    expect(defaultImage, findsOneWidget);

    expect(find.byType(CachedNetworkImage), findsNothing);

    await tester.pumpAndSettle();
  });
}
