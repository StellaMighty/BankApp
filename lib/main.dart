import 'package:flutter/material.dart';
import 'package:bankapp/pages/transaction.dart';
import 'package:bankapp/Budget.dart';
import 'package:bankapp/Recommendation.dart';

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
        drawer: ,
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
                  style: TextStyle(fontSize: 18, fontFamily: 'Lobster'),
                ),
                SizedBox(
                  height: _height * 0.01,
                ),
                Text(
                  "Creative Mints",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                //SIZED BOX HERE
                SizedBox(
                  height: _height * 0.05,
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
                  height: _height * 0.02,
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
                        child: BoxWidget(
                          width: _width / 0.9,
                          color: Colors.green,
                          title: 'Transactions',
                          subTitle: '4 times',
                          icon: Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                          height: _height / 0.2,
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
                          width: _width / 2.5,
                          height: _width / 2.5,
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
                  height: _height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Recommendation();
                        }));
                      },
                      child: Container(
                        width: _width / 2.5,
                        height: _width / 2.5,
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
                    ),
                    Container(
                      width: _width / 2.5,
                      height: _width / 2.5,
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

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    Key key,
    @required double width,
    @required double height,
    @required Color color,
    @required Icon icon,
    @required String title,
    @required String subTitle,
  })  : _width = width,
        _height = height,
        _color = color,
        _icon = icon,
        _title = title,
        _subTitle = subTitle,
        super(key: key);

  final double _width;
  final double _height;
  final Color _color;
  final Icon _icon;
  final String _title;
  final String _subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width / 2.8,
      height: _width / 2.8,
      padding: EdgeInsets.only(left: 20, top: 35),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: _color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _icon,
          SizedBox(height: 20),
          Text(
            "$_title",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "$_subTitle",
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
