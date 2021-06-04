import 'package:budgeteer/screens/home/budget_drawer.dart';
import 'package:budgeteer/screens/home/time_interval_drawer.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Budgeteer"),
        backgroundColor: Colors.brown[300],
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.hourglass_empty),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          )
        ],
      ),
      drawer: TimeIntervalDrawer(),
      endDrawer: BudgetDrawer(),
      body: Container(
        child: Center(child: Text("Home")),
      ),
    );
  }
}
