import 'dart:convert';

class CashFlow {
  final double value;
  final int type, day, month, year;

  CashFlow({this.value, this.type, this.day, this.month, this.year});

  factory CashFlow.fromJson(Map<String, dynamic> json) {
    return CashFlow(
      value: json['value'],
      type: json['type'],
      day: json['day'],
      month: json['month'],
      year: json['year'],
    );
  }

  static Map<String, dynamic> toMap(CashFlow cashFlow) {
    return {
      'value': cashFlow.value,
      'type': cashFlow.type,
      'day': cashFlow.day,
      'month': cashFlow.month,
      'year': cashFlow.year
    };
  }

  static String encode(List<CashFlow> cashFlows) {
    return json.encode(
      cashFlows
          .map<Map<String, dynamic>>((cashFlow) => CashFlow.toMap(cashFlow))
          .toList(),
    );
  }

  static List<CashFlow> decode(String cashFlow) {
    return (json.decode(cashFlow) as List<dynamic>)
        .map<CashFlow>((item) => CashFlow.fromJson(item))
        .toList();
  }
}
