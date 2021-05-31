import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Budgeteer"),
          backgroundColor: Colors.brown[300],
          centerTitle: true,
        ),
        body: Container(
          child: Center(child: Text("Home")),
        ));
  }
}
