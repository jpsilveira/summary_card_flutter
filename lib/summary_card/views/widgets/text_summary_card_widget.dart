import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';

enum TypeNumeric {
  none,
  currency,
  percent,
}

class TextSummaryCardWidget extends StatelessWidget {
  const TextSummaryCardWidget({
    Key? key,
    required this.summaryCardModelField,
    required this.format,
    required this.style,
    required this.typeNumeric,
    this.decimals = 2,
    this.decimalsTruncate = false,
  }) : super(key: key);

  final SummaryCardModelField summaryCardModelField;
  final TextStyle style;
  final String format;
  final TypeNumeric typeNumeric;
  final int decimals;
  final bool decimalsTruncate;

  @override
  Widget build(BuildContext context) {
    //
    double truncate(double num, [int precision = 0]) {
      String ret = num.toStringAsFixed(precision + 1);
      ret = ret.substring(0, ret.length - 1);
      return double.parse(ret);
    }

    return Consumer<SummaryCardModel>(
      builder: (context, model, widget) {
        dynamic modelField;

        switch (summaryCardModelField) {
          case SummaryCardModelField.total:
            modelField = model.total * 1.0;
            break;
          case SummaryCardModelField.profitability:
            modelField = model.profitability * 1.0;
            break;
          case SummaryCardModelField.cdi:
            modelField = model.cdi * 1.0;
            break;
          case SummaryCardModelField.gain:
            modelField = model.gain * 1.0;
            break;
          case SummaryCardModelField.hasHistory:
            return Text(model.hasHistory ? "ver mais" : "");
          default:
            return Text("Código do cliente: $model.hasHistory");
        }

        if (modelField == null) {
          modelField = 0.0;
        }
        if (decimalsTruncate) {
          modelField = truncate(modelField, decimals);
        }

        return Text(
          (typeNumeric == TypeNumeric.currency ? "R\$ " : "") +
              "${NumberFormat(format, "pt_BR").format(modelField)}" +
              (typeNumeric == TypeNumeric.percent ? "%" : ""),
          style: style,
          key: Key("testTextSC"),
        );
      },
    );
  }
}
