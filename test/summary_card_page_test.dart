import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:summary_card/summary_card/views/widgets/app_summary_card_widget.dart';

void main() {
  testWidgets(
    "Summary card page test",
    (WidgetTester tester) async {
      await tester.runAsync(
        () async {
          await tester.pumpWidget(
            MaterialApp(
              home: AppSummaryCardWidget(
                clientID: 2,
              ),
            ),
          );

          expect(find.byKey(ValueKey("testSubscription")), findsOneWidget);
          expect(find.byKey(ValueKey("testLoadingPage")), findsOneWidget);
        },
      );
    },
  );
}
