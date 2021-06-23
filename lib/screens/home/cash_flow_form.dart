import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";

import 'package:budgeteer/shared/constants.dart';
import 'package:budgeteer/models/cash_flow.dart';

class CashFlowForm extends StatefulWidget {
  // If type is 0, add expenses
  // If type is 1, add income
  final int type;

  const CashFlowForm({Key key, this.type}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<CashFlowForm> {
  final _formKey = GlobalKey<FormState>();

  // Form Values
  double _value;

  // Save data to shared preferences
  Future saveData(value, type) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cashFlowsString = prefs.getString("cashFlows");

    CashFlow newCashFlow =
        CashFlow(value: value, type: type, day: 1, month: 6, year: 2001);

    // If there are no cash flows
    if (cashFlowsString == null) {
      final List<CashFlow> cashFlowsList = [newCashFlow];

      final String encodedCashFlows = CashFlow.encode(cashFlowsList);
      prefs.setString("cashFlows", encodedCashFlows);
    } else {
      // If there are cash flows
      final List<CashFlow> cashFlowsList = CashFlow.decode(cashFlowsString);
      cashFlowsList.add(newCashFlow);

      final String encodedCashFlows = CashFlow.encode(cashFlowsList);
      prefs.setString("cashFlows", encodedCashFlows);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type == 0) {
      return Form(
          key: _formKey,
          child: Column(
            children: [
              Text("Add Expenses", style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              TextFormField(
                decoration: textInputDecoration,
                validator: (val) => val.isEmpty ? 'Enter expense value' : null,
                onChanged: (val) => setState(() => _value = double.parse(val)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      saveData(_value, widget.type);
                      Navigator.pop(context);
                    }
                  },
                  child: Text("Add Expenses"))
            ],
          ));
    } else {
      return Form(
          key: _formKey,
          child: Column(
            children: [
              Text("Add Income", style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              TextFormField(
                decoration: textInputDecoration,
                validator: (val) => val.isEmpty ? 'Enter income value' : null,
                onChanged: (val) => setState(() => _value = double.parse(val)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      saveData(_value, widget.type);
                      Navigator.pop(context);
                    }
                  },
                  child: Text("Add Income"))
            ],
          ));
    }
  }
}
