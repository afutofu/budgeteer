import "package:flutter/material.dart";

class TimeIntervalDrawer extends StatelessWidget {
  final height = AppBar().preferredSize.height;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sort Budget Data By",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.brown[500]),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(150, 40))),
                        onPressed: () {},
                        child: Text("Day"),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.brown[500]),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(150, 40))),
                        onPressed: () {},
                        child: Text("Week"),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.brown[500]),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(150, 40))),
                        onPressed: () {},
                        child: Text("Month"),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.brown[500]),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(150, 40))),
                        onPressed: () {},
                        child: Text("Quarter"),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.brown[500]),
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(150, 40))),
                        onPressed: () {},
                        child: Text("Year"),
                      ),
                    ]))));
  }
}
