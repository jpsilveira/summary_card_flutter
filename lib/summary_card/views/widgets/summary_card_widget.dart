import 'package:flutter/material.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';
import 'package:summary_card/summary_card/shared/themes/app_colors.dart';
import 'package:summary_card/summary_card/shared/themes/app_text.dart';
import 'package:summary_card/summary_card/views/widgets/show_more_top_button.dart';

import 'show_more_bottom_button.dart';
import 'text_summary_card_widget.dart';

class SummaryCardWidget extends StatefulWidget {
  SummaryCardWidget({Key? key}) : super(key: key);

  @override
  _SummaryCardWidgetState createState() => _SummaryCardWidgetState();
}

class _SummaryCardWidgetState extends State<SummaryCardWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final dpi = MediaQuery.of(context).devicePixelRatio;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(children: [
          Container(
            // width: size.width,
            // height: size.height * 0.6,
            margin: EdgeInsets.only(left: 8 * dpi, right: 8 * dpi),
            decoration: BoxDecoration(
              color: AppColors.body,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow.withOpacity(1),
                  spreadRadius: 0.5,
                  offset: Offset(1, 1),
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 8 * dpi,
                bottom: 8 * dpi,
                left: 11 * dpi,
                right: 11 * dpi,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Seu resumo",
                        style: AppText.titleHome,
                      ),
                      SizedBox(
                        width: 10 * dpi,
                        child: ShowMoreTopButton(),
                      ),
                    ],
                  ),
                  SizedBox(height: 10 * dpi),
                  Text(
                    "Valor Investido",
                    style: AppText.detailRegular,
                  ),
                  SizedBox(height: 4 * dpi),
                  TextSummaryCardWidget(
                    summaryCardModelField: SummaryCardModelField.total,
                    format: "#,###.00",
                    style: AppText.subtitleBold,
                    typeNumeric: TypeNumeric.currency,
                    key: Key("testTextTotal"),
                  ),
                  SizedBox(height: 14 * dpi),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rentabilidade/mês",
                        style: AppText.detailRegular,
                      ),
                      TextSummaryCardWidget(
                        summaryCardModelField:
                            SummaryCardModelField.profitability,
                        format: "###.000",
                        style: AppText.detailBold,
                        typeNumeric: TypeNumeric.percent,
                        decimals: 3,
                        decimalsTruncate: true,
                        key: Key("testTextProfitability"),
                      ),
                    ],
                  ),
                  SizedBox(height: 4 * dpi),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CDI",
                        style: AppText.detailRegular,
                      ),
                      TextSummaryCardWidget(
                        summaryCardModelField: SummaryCardModelField.cdi,
                        format: "###.00",
                        style: AppText.detailBold,
                        typeNumeric: TypeNumeric.percent,
                        decimalsTruncate: true,
                        key: Key("testTextCdi"),
                      ),
                    ],
                  ),
                  SizedBox(height: 4 * dpi),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ganho/mês",
                        style: AppText.detailRegular,
                      ),
                      TextSummaryCardWidget(
                        summaryCardModelField: SummaryCardModelField.gain,
                        format: "###.00",
                        style: AppText.detailBold,
                        typeNumeric: TypeNumeric.currency,
                        decimalsTruncate: true,
                        key: Key("testTextGain"),
                      ),
                    ],
                  ),
                  Divider(
                      color: AppColors.shadow, height: 15 * dpi, thickness: 1),
                  ShowMoreBottomButton(),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
