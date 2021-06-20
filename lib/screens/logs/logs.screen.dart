import 'package:budgeteer/screens/logs/log_list.dart';
import "package:flutter/material.dart";

class LogsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Logs"),
          backgroundColor: Colors.brown[300],
          centerTitle: true,
          leading: Builder(builder: (context) {
            return IconButton(
              icon: Icon(Icons.hourglass_empty),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
        ),
        drawer: Drawer(
          child: Container(
            child: Center(
              child: Text(
                "Sort by Time",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ),
        ),
        body: Container(
          child: Center(child: LogList()),
        ));
  }
}
