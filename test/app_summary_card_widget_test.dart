import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:summary_card/summary_card/views/widgets/app_summary_card_widget.dart';

void main() {
  testWidgets("App summary card widget", (WidgetTester tester) async {
    await tester.runAsync(
      () async {
        await tester.pumpWidget(
          AppSummaryCardWidget(clientID: 1),
        );

        expect(find.byKey(ValueKey("testGraphQl")), findsOneWidget);
        expect(find.byKey(ValueKey("testSummaryCard")), findsOneWidget);
      },
    );
  });
}
