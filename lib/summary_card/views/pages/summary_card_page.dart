import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:summary_card/summary_card/controllers/connect_graphql.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';
import 'package:summary_card/summary_card/shared/themes/app_colors.dart';
import 'package:summary_card/summary_card/views/widgets/loading_widget.dart';
import 'package:summary_card/summary_card/views/widgets/my_error_widget.dart';
import 'package:summary_card/summary_card/views/widgets/summary_card_widget.dart';

class SummaryCardPage extends StatefulWidget {
  SummaryCardPage({Key? key, required this.clientID}) : super(key: key);

  final int clientID;

  @override
  _SummaryCardPageState createState() => _SummaryCardPageState();
}

class _SummaryCardPageState extends State<SummaryCardPage> {
  @override
  Widget build(BuildContext context) {
    SummaryCardModel summaryCardModel = Provider.of<SummaryCardModel>(context);

    String query =
        ConnectGraphQl().getWealthSummaryByPK(clientID: widget.clientID);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Subscription(
          key: Key("testSubscription"),
          options: SubscriptionOptions(document: gql(query)),
          builder: (result) {
            if (result.data == null) {
              return LoadingWidget(
                key: Key("testLoadingPage"),
              );
            } else if (result.hasException) {
              return MyErrorWidget();
            } else {
              summaryCardModel.fromJson(
                result.data!['wealthSummary_by_pk'],
              );
              return SummaryCardWidget();
            }
          },
        ),
      ),
    );
  }
}
