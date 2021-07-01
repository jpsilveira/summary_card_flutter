import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';
import 'package:summary_card/summary_card/shared/themes/app_colors.dart';
import 'package:summary_card/summary_card/shared/themes/app_text.dart';

import 'alert_dialog.dart';

class ShowMoreBottomButton extends StatelessWidget {
  const ShowMoreBottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dpi = MediaQuery.of(context).devicePixelRatio;

    return Consumer<SummaryCardModel>(
      builder: (context, summaryCardModel, widget) {
        return Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 40,
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: AppColors.body,
              borderRadius: BorderRadius.circular(20),
              border: Border.fromBorderSide(
                BorderSide(
                  color: summaryCardModel.hasHistory
                      ? AppColors.primary
                      : AppColors.disabled,
                ),
              ),
            ),
            child: TextButton(
              style: ButtonStyle(),
              key: Key("testBottomButton"),
              onPressed: !summaryCardModel.hasHistory
                  ? null
                  : () {
                      showAlertDialog(context, 'inferior');
                    },
              child: Text(
                "VER MAIS",
                style: summaryCardModel.hasHistory
                    ? AppText.buttonBoldPrimary
                    : AppText.buttonBoldDisabled,
              ),
            ),
          ),
        );
      },
    );
  }
}
