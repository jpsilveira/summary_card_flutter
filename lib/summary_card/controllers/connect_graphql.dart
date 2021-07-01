import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:summary_card/summary_card/shared/settings.dart';

class ConnectGraphQl {
  final WebSocketLink websocketLink = WebSocketLink(
    Settings.url,
    config: SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: Duration(seconds: 30),
        initialPayload: () async {
          return {
            'headers': {Settings.defaultHeader: Settings.secretKey},
          };
        }),
  );

  ValueNotifier<GraphQLClient> getClient() {
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(
          partialDataPolicy: PartialDataCachePolicy.acceptForOptimisticData,
        ),
        link: websocketLink,
      ),
    );

    return client;
  }

  String getWealthSummaryByPK({required int clientID}) {
    return "subscription { wealthSummary_by_pk(id: $clientID) { id, total, hasHistory, cdi, gain, profitability } }";
  }
}
