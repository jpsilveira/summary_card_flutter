import 'package:flutter/foundation.dart';

class SummaryCardModel extends ChangeNotifier {
  double total = 0.0;
  double cdi = 0.0;
  double gain = 0.0;
  double profitability = 0.0;
  bool hasHistory = false;
  int id = 0;

  SummaryCardModel();

  void fromJson(Map<String, dynamic> json) {
    id = json['id'];
    total = json['total'].toDouble();
    hasHistory = json['hasHistory'];
    cdi = json['cdi'].toDouble();
    gain = json['gain'].toDouble();
    profitability = json['profitability'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['total'] = this.total;
    data['hasHistory'] = this.hasHistory;
    data['cdi'] = this.cdi;
    data['gain'] = this.gain;
    data['profitability'] = this.profitability;
    return data;
  }
}

enum SummaryCardModelField {
  id,
  total,
  profitability,
  cdi,
  gain,
  hasHistory,
}
