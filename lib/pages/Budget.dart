import 'package:flutter/material.dart';

class Budget extends StatefulWidget {
  @override
  _BudgetState createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double _height = mediaQuery.height;

    double _width = mediaQuery.width;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xff191970),
      appBar: AppBar(
        backgroundColor: Color(0xff191970),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
        ),
        title: Text("Hi Mints !"),
        actions: [
          Icon(
            Icons.add_a_photo,
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
          SizedBox(height: _height * 0.08),
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
          SizedBox(
            height: _height * 0.02,
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
                        color: Colors.orangeAccent,
                        border: Border.all(color: Color(0xff00008B))),
                    height: _height * 0.23,
                    width: _width * 0.8,
                    child: ListTile(
                      title: Text(
                        "Security Card",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Text("£ 400,000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepPurpleAccent,
                        border: Border.all(color: Color(0xff00008B))),
                    height: _height * 0.23,
                    width: _width * 0.8,
                    child: ListTile(
                      title: Text("Private Card",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      trailing: Text("£ 7,400,000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.redAccent,
                        border: Border.all(color: Color(0xff00008B))),
                    height: _height * 0.23,
                    width: _width * 0.8,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Family Card",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          trailing: Text("£ 7,400,000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage("assets/wow.jpeg"),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage("assets/birth.jpeg"),
                              ),
                              Icon(
                                Icons.add_circle_outline,
                                size: 40,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          trailing: Text(
                            "VISA",
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                        )
                      ],
                    ),
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
