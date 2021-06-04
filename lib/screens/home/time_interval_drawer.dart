import "package:flutter/material.dart";

class TimeIntervalDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Center(
          child: Text(
            "Sort by Time",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
