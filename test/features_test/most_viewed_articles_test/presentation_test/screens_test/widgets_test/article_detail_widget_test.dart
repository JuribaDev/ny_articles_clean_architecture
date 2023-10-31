import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/article_detail_widget.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  testWidgets('ArticleDetailWidget displays article details', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ArticleDetailWidget(article: articleEntityTest),
    ));
    expect(find.text('From Bush v. Gore to ‘Stop the Steal’: Kenneth Chesebro’s Long, Strange Trip'), findsOneWidget);
    expect(find.text('By Elizabeth Williamson'), findsOneWidget);
    expect(
        find.text(
            'Mr. Chesebro, a buttoned-down Harvard lawyer, evolved from left-leaning jurist to key player in the Trump false electors scandal. What happened?'),
        findsOneWidget);
    await tester.tap(find.text('Read The Article'));
    await tester.pumpAndSettle();
  });
}
