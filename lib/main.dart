import 'package:flutter/material.dart';
import 'package:bankapp/pages/transaction.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
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
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                  //TODO: call an app drawer
                  onPressed: () => print("Pressed"),
                  icon: Icon(
                    Icons.format_align_left,
                    size: 15,
                  )),
            ),
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/chi.jpg'),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 10,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 20, fontFamily: 'Lobster'),
                ),
                Text(
                  "Creative Mints",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                //SIZED BOX HERE
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Transaction();
                          }));
                        },
                        child: Container(
                          width: _width / 2.8,
                          height: _width / 2.8,
                          padding: EdgeInsets.only(left: 20, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Transactions",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "4 Times",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Budget();
                          }));
                        },
                        child: Container(
                          width: _width / 2.8,
                          height: _width / 2.8,
                          padding: EdgeInsets.only(left: 20, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.shutter_speed,
                                color: Colors.white,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Budget",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "4 Times",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: _width / 2.8,
                      height: _width / 2.8,
                      padding: EdgeInsets.only(left: 20, top: 35),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orangeAccent),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Recommendation",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "4 Times",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: _width / 2.8,
                      height: _width / 2.8,
                      padding: EdgeInsets.only(left: 20, top: 35),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: Colors.white,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Credit Cards",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "4 Times",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 30),
                  child: Text(
                    "Choose a Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: _width / 2.3,
                        height: _height * 0.07,
                        padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 0.3,
                                style: BorderStyle.solid,
                                color: Colors.grey)),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(100)),
                              width: 30,
                              height: 30,
                              child: Icon(
                                Icons.account_balance,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                "Services Offered",
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: _width / 2.3,
                        height: _height * 0.07,
                        padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 0.3,
                                style: BorderStyle.solid,
                                color: Colors.grey)),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(100)),
                              width: 30,
                              height: 30,
                              child: Icon(
                                Icons.payment,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                "Make a Payment",
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Budget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
    );
  }
}
