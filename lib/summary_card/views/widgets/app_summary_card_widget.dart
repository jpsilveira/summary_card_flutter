import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:summary_card/summary_card/controllers/connect_graphql.dart';
import 'package:summary_card/summary_card/models/sumary_card_model.dart';
import 'package:summary_card/summary_card/views/pages/summary_card_page.dart';

class AppSummaryCardWidget extends StatelessWidget {
  AppSummaryCardWidget({required this.clientID});

  final int clientID;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SummaryCardModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GraphQLProvider(
          key: Key("testGraphQl"),
          child: SummaryCardPage(
            clientID: clientID,
            key: Key("testSummaryCard"),
          ),
          client: ConnectGraphQl().getClient(),
        ),
      ),
    );
  }
}
