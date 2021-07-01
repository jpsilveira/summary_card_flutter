import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';

void main() {
  String returnJson = "";
  String paramJson =
      '{"id":1,"total":1.0,"hasHistory":true,"cdi":1.0,"gain":1.0,"profitability":1.0}';

  testWidgets(
    'Summary Card Model',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => SummaryCardModel(),
          child: MaterialApp(
            home: Material(
              child: Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: TextButton(
                      child: const Text('Test Button'),
                      onPressed: () {
                        SummaryCardModel summaryCardModel = SummaryCardModel();

                        summaryCardModel.fromJson(jsonDecode(paramJson));
                        returnJson = jsonEncode(summaryCardModel.toJson());
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Test Button'));
      await tester.pump(); // start animation

      expect(returnJson, paramJson);
    },
  );
}
