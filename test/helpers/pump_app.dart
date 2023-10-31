import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/presentation/bloc/most_viewed_article_bloc.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp({required Widget widget, required MostViewedArticleBloc bloc}) {
    return pumpWidget(
      BlocProvider.value(
        value: bloc,
        child: MaterialApp(
          home: Scaffold(body: widget),
        ),
      ),
    );
  }
}
