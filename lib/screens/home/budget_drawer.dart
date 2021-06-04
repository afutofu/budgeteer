import "package:flutter/material.dart";

class BudgetDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Center(
          child: Text(
            "Set budget / Add expenses / Add income",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
