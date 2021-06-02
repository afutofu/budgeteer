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
      endDrawer: Drawer(
        child: Container(
          child: Center(
            child: Text(
              "Set budget / Add expenses / Add income",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(child: Text("Home")),
      ),
    );
  }
}
