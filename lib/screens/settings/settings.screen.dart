import "package:flutter/material.dart";

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.brown[300],
          centerTitle: true,
        ),
        body: Container(
          child: Center(child: Text("Settings")),
        ));
  }
}
