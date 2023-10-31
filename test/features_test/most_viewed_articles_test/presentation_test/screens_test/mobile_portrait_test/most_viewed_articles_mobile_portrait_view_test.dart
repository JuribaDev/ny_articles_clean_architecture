import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/mobile_portrait/most_viewed_articles_mobile_portrait_view.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/article_card_widget.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/error_widget.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/screens/widgets/articles_loading_widget.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late MostViewedArticleBloc bloc;

  setUp(() {
    bloc = MockMostViewedArticleBloc();
  });

  tearDown(() {
    bloc.close();
  });

  testWidgets('Displays loading when state is MostViewedArticleLoadingState', (tester) async {
    when(() => bloc.state).thenReturn(MostViewedArticleLoadingState());

    await tester.pumpWidget(MaterialApp(
      home: BlocProvider.value(
        value: bloc,
        child: const MostViewedArticlesMobilePortraitView(),
      ),
    ));

    expect(find.byType(ArticlesLoadingWidget), findsOneWidget);
  });

  testWidgets('Displays error when state is MostViewedArticleErrorState', (tester) async {
    when(() => bloc.state).thenReturn(const MostViewedArticleErrorState('Some error'));

    await tester.pumpWidget(MaterialApp(
      home: BlocProvider.value(
        value: bloc,
        child: const MostViewedArticlesMobilePortraitView(),
      ),
    ));

    expect(find.byType(CustomErrorWidget), findsOneWidget);
  });

  testWidgets('Displays articles list when state is MostViewedArticleIsLoadedState', (tester) async {
    when(() => bloc.state).thenReturn(MostViewedArticleIsLoadedState([articleEntityTest]));

    await tester.pumpWidget(MaterialApp(
      home: BlocProvider.value(
        value: bloc,
        child: const MostViewedArticlesMobilePortraitView(),
      ),
    ));

    expect(find.byType(ArticleCardWidget), findsWidgets);
  });
}
