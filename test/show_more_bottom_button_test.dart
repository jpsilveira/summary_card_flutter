import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';
import 'package:summary_card/summary_card/views/widgets/show_more_bottom_button.dart';

void main() {
  testWidgets(
    "Show more bottom button",
    (WidgetTester tester) async {
      final addButton = find.byKey(ValueKey("testBottomButton"));

      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => SummaryCardModel(),
          child: MaterialApp(
            home: ShowMoreBottomButton(),
          ),
        ),
      );

      await tester.tap(addButton);

      expect(addButton, findsOneWidget);
    },
  );
}
