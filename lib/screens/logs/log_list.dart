import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

class LogList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<LogList> {
  Future _getLogs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String logsString = prefs.getString("logs");
    print(logsString);
  }

  @override
  Widget build(BuildContext context) {
    _getLogs();

    return Text("Log List");

    // final brews =

    // return ListView.builder(
    // itemCount: brews.length,
    // itemBuilder: (context, index) {
    // return BrewTile(brew: brews[index]);
    //   },
    // );
  }
}
