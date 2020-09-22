import 'package:flutter/material.dart';

class Budget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double _height = mediaQuery.height;
    print(_height);
    double _width = mediaQuery.width;
    print(_width);
    return Scaffold(
      backgroundColor: Color(0xff191970),
      appBar: AppBar(
        backgroundColor: Color(0xff191970),
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/chi.jpg"),
        ),
        title: Text("Hi Mints !"),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: _height * 0.08),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: _height * 0.18,
                  width: _width * 0.4,
                  decoration: BoxDecoration(
                      color: Color(0xff00008B),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Text(
                        "£ 3,000",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  height: _height * 0.18,
                  width: _width * 0.4,
                  decoration: BoxDecoration(
                      color: Color(0xff00008B),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Monthly Spending",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Text(
                        "£ 1,760",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: _height * 0.08,
            child: ListView(
              children: [
                ListTile(
                  leading: Text(
                    "My Cards",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  title: Center(
                    child: Text(
                      "Deposits",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w100),
                    ),
                  ),
                  trailing: Text(
                    "Loyalty Programme",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w100),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero),
                color: Colors.orangeAccent),
            height: _height * 0.08,
            width: _width * 0.8,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.deepPurpleAccent),
            height: _height * 0.08,
            width: _width * 0.8,
          ),
        ],
      ),
    );
  }
}
