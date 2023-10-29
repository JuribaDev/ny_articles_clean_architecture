import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ny_articles_clean_architecture/core/widgets/responsive_layout_wrapper.dart';

void main() {
  group('Responsive Layout', () {
    testWidgets('Renders mobile layout in small screens', (WidgetTester tester) async {
      tester.view.physicalSize = const Size(400, 800);
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        const MaterialApp(
          home: ResponsiveLayoutWrapper(
            mobilePortraitLayout: Text('Mobile Portrait Layout'),
            mobileLandscapeLayout: Text('Mobile Landscape Layout'),
            tabletPortraitLayout: Text('Tablet Portrait Layout'),
            tabletLandscapeLayout: Text('Tablet Landscape Layout'),
            desktopLayout: Text('Desktop Layout'),
          ),
        ),
      );

      expect(find.text('Mobile Portrait Layout'), findsOneWidget);
    });

    testWidgets('Renders tablet layout in medium screens', (WidgetTester tester) async {
      tester.view.physicalSize = const Size(850, 1200);
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        const MaterialApp(
          home: ResponsiveLayoutWrapper(
            mobilePortraitLayout: Text('Mobile Portrait Layout'),
            mobileLandscapeLayout: Text('Mobile Landscape Layout'),
            tabletPortraitLayout: Text('Tablet Portrait Layout'),
            tabletLandscapeLayout: Text('Tablet Landscape Layout'),
            desktopLayout: Text('Desktop Layout'),
          ),
        ),
      );

      expect(find.text('Tablet Portrait Layout'), findsOneWidget);
    });

    testWidgets('Renders desktop layout in large screens', (WidgetTester tester) async {
      tester.view.physicalSize = const Size(1950, 2400);
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        const MaterialApp(
          home: ResponsiveLayoutWrapper(
            mobilePortraitLayout: Text('Mobile Portrait Layout'),
            mobileLandscapeLayout: Text('Mobile Landscape Layout'),
            tabletPortraitLayout: Text('Tablet Portrait Layout'),
            tabletLandscapeLayout: Text('Tablet Landscape Layout'),
            desktopLayout: Text('Desktop Layout'),
          ),
        ),
      );

      expect(find.text('Desktop Layout'), findsOneWidget);
    });

    testWidgets('Renders mobile landscape layout when orientation is landscape', (WidgetTester tester) async {
      tester.view.physicalSize = const Size(800, 600);
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        const MaterialApp(
          home: ResponsiveLayoutWrapper(
            mobilePortraitLayout: Text('Mobile Portrait Layout'),
            mobileLandscapeLayout: Text('Mobile Landscape Layout'),
            tabletPortraitLayout: Text('Tablet Portrait Layout'),
            tabletLandscapeLayout: Text('Tablet Landscape Layout'),
            desktopLayout: Text('Desktop Layout'),
          ),
        ),
      );

      expect(find.text('Mobile Landscape Layout'), findsOneWidget);
    });

    testWidgets('Renders tablet landscape layout when orientation is landscape', (WidgetTester tester) async {
      tester.view.physicalSize = const Size(960, 850);
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        const MaterialApp(
          home: ResponsiveLayoutWrapper(
            mobilePortraitLayout: Text('Mobile Portrait Layout'),
            mobileLandscapeLayout: Text('Mobile Landscape Layout'),
            tabletPortraitLayout: Text('Tablet Portrait Layout'),
            tabletLandscapeLayout: Text('Tablet Landscape Layout'),
            desktopLayout: Text('Desktop Layout'),
          ),
        ),
      );

      expect(find.text('Tablet Landscape Layout'), findsOneWidget);
    });
  });
}
