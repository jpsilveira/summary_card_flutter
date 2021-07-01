import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';
import 'package:summary_card/summary_card/shared/themes/app_text.dart';
import 'package:summary_card/summary_card/views/widgets/text_summary_card_widget.dart';

void main() {
  testWidgets(
    "Show more bottom button",
    (WidgetTester tester) async {
      final addText = find.byKey(ValueKey("testTextSC"));

      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => SummaryCardModel(),
          child: MaterialApp(
            home: TextSummaryCardWidget(
              summaryCardModelField: SummaryCardModelField.total,
              format: "#,###.00",
              style: AppText.subtitleBold,
              typeNumeric: TypeNumeric.currency,
            ),
          ),
        ),
      );

      expect(addText, findsOneWidget);
    },
  );
}
