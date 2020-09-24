import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double _height = mediaQuery.height;
    print(_height);
    double _width = mediaQuery.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        actions: [
          Icon(
            Icons.tune,
            color: Colors.blue,
          )
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/wow.jpeg"),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "How To Use",
                style: TextStyle(fontSize: 20, color: Color(0xff000080)),
              ),
              Text("How to use the App ?",
                  style: TextStyle(fontStyle: FontStyle.italic)),
            ]),
            Container(
              height: _height * 2.5,
              child: Column(
                children: [
                  ListTile(
                    leading: Text("1."),
                    title: Text(
                        "On the home page, you will see 4 squares, choose the 1st square to get a Transaction done"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: _height * 0.2,
                        child: Image(image: AssetImage("assets/screena.png"))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
