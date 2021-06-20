import 'package:budgeteer/shared/constants.dart';
import "package:flutter/material.dart";

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
                  onPressed: () {},
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
                  onPressed: () {},
                  child: Text("Add Income"))
            ],
          ));
    }
  }
}
