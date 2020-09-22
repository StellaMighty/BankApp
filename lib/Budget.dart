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
            width: _width,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                Text(
                  'My Card',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Deposit',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Loyalty Programme',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orangeAccent),
                    height: _height * 0.2,
                    width: _width * 0.8,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepPurpleAccent),
                    height: _height * 0.2,
                    width: _width * 0.8,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.redAccent),
                    height: _height * 0.2,
                    width: _width * 0.8,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
