import "package:flutter/material.dart";
import "package:budgeteer/screens/home/cash_flow_form.dart";

class BudgetDrawer extends StatelessWidget {
  final height = AppBar().preferredSize.height;
  final double space = 35;

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel(calculatorType) {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 60),
                child: CashFlowForm(type: calculatorType));
          });
    }

    return Drawer(
      child: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: height),
            child: Column(
              children: [
                Text("Current Budget",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: space),
                Text("\$400", style: TextStyle(fontSize: 19)),
                SizedBox(height: space),
                TextButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.brown[500]),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(150, 40))),
                  onPressed: () {},
                  child: Text("Set Budget"),
                ),
                SizedBox(height: space),
                TextButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(150, 40))),
                  onPressed: () {
                    _showSettingsPanel(0);
                  },
                  child: Text("Add Expenses"),
                ),
                SizedBox(height: space),
                TextButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(150, 40))),
                  onPressed: () {
                    _showSettingsPanel(1);
                  },
                  child: Text("Add Income"),
                ),
                SizedBox(height: space),
              ],
            )),
      ),
    );
  }
}
