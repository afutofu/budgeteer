import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

import 'package:budgeteer/models/cash_flow.dart';

class LogList extends StatefulWidget {
  @override
  _LogListState createState() => _LogListState();
}

class _LogListState extends State<LogList> {
  List<CashFlow> cashFlowsList;

  @override
  void initState() {
    _getData();
  }

  _getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String logsString = prefs.getString("cashFlows");
    final List<CashFlow> cashFlowsList = CashFlow.decode(logsString);

    setState(() {
      this.cashFlowsList = cashFlowsList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cashFlowsList.length,
      itemBuilder: (context, index) {
        print(cashFlowsList[index].value.toString());
        return Text(cashFlowsList[index].value.toString());
      },
    );
  }
}
