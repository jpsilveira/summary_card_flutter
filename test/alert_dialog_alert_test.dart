import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:summary_card/summary_card/views/widgets/alert_dialog.dart';

void main() {
  testWidgets('Dialog is scrollable', (WidgetTester tester) async {
    final addButtonAlert = find.byKey(ValueKey("testButtonAlert"));
    final addAlert = find.byKey(ValueKey("testAlert"));

    await tester.pumpWidget(
      MaterialApp(
        home: new Material(
          child: Builder(
            builder: (BuildContext context) {
              return Center(
                child: TextButton(
                  child: const Text('Test Button'),
                  onPressed: () {
                    showAlertDialog(context, "test");
                  },
                ),
              );
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Test Button'));
    await tester.pump(); // start animation

    expect(addButtonAlert, findsOneWidget);
    expect(addAlert, findsOneWidget);

    await tester.tap(addButtonAlert);
    await tester.pump();
  });
}
