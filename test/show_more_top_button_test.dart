import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:summary_card/summary_card/views/widgets/show_more_top_button.dart';

void main() {
  testWidgets(
    "Show more top button",
    (WidgetTester tester) async {
      final addButton = find.byKey(ValueKey("testTopButton"));

      await tester.pumpWidget(
        MaterialApp(
          home: ShowMoreTopButton(),
        ),
      );
      await tester.tap(addButton);

      expect(addButton, findsOneWidget);
    },
  );
}
