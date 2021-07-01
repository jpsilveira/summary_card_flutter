import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';
import 'package:summary_card/summary_card/views/widgets/summary_card_widget.dart';

void main() {
  testWidgets(
    "Summary Card widget",
    (WidgetTester tester) async {
      final width = 450;
      final height = 680;
      final dpi = tester.binding.window.devicePixelRatio;
      tester.binding.window.physicalSizeTestValue =
          Size(width * dpi, height * dpi);

      final addTextTotal = find.byKey(ValueKey("testTextTotal"));
      final addTextProfitability =
          find.byKey(ValueKey("testTextProfitability"));
      final addTextCdi = find.byKey(ValueKey("testTextCdi"));
      final addTextGain = find.byKey(ValueKey("testTextGain"));

      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => SummaryCardModel(),
          child: MaterialApp(
            home: SummaryCardWidget(),
          ),
        ),
      );

      expect(addTextTotal, findsOneWidget);
      expect(addTextProfitability, findsOneWidget);
      expect(addTextCdi, findsOneWidget);
      expect(addTextGain, findsOneWidget);
    },
  );
}
