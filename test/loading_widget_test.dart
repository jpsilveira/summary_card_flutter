import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:summary_card/summary_card/views/widgets/loading_widget.dart';

void main() {
  testWidgets(
    "Loading widget",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoadingWidget(),
        ),
      );

      expect(find.byKey(ValueKey("testLoading")), findsOneWidget);
    },
  );
}
