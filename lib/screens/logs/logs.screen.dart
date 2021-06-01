import "package:flutter/material.dart";

class LogsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Logs"),
          backgroundColor: Colors.brown[300],
          centerTitle: true,
        ),
        body: Container(
          child: Center(child: Text("Logs")),
        ));
  }
}
