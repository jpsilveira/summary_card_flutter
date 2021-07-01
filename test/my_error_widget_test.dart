import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:summary_card/summary_card/views/widgets/my_error_widget.dart';

void main() {
  testWidgets(
    "Error widget",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: MyErrorWidget(),
        ),
      );

      expect(find.byKey(ValueKey("testError")), findsOneWidget);
    },
  );
}
