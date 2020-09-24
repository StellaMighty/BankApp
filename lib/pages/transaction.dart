import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2f26d9),
        appBar: AppBar(
            backgroundColor: Color(0xff2f26d9),
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.only(left: 30.0, top: 10, bottom: 10.0),
              child: IconButton(
                  //TODO: call an app drawer
                  onPressed: () =>
                      Navigator.pop(context), //takes you back to previous page
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  )),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ]),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.0, bottom: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Balance",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("£900,000,000",
                        style: TextStyle(color: Colors.white, fontSize: 24)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        color: Color(0xffc4f2ff),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: Color(0xff3674ef),
                          size: 40,
                        ),
                        Text(
                          "£5,000",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Expense")
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    padding: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        color: Color(0xffffe6d7),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.money_off,
                          color: Color(0xfff2a715),
                          size: 40,
                        ),
                        Text("£15,000"),
                        Text("Spend to Goals")
                      ],
                    ),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: ListTile(
                        title: Text(
                          "Transactions",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        trailing: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: ListView(
                          children: [
                            ListTile(
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    Icons.directions_car,
                                    color: Colors.white,
                                  )),
                              title: Text("Car Purchase"),
                              subtitle: Text(
                                "Auto loan",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontStyle: FontStyle.italic),
                              ),
                              trailing: Text("-£200"),
                            ),
                            ListTile(
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                  )),
                              title: Text("Home Purchase"),
                              subtitle: Text(
                                "Airbnb",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontStyle: FontStyle.italic),
                              ),
                              trailing: Text("£2500"),
                            ),
                            ListTile(
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    Icons.card_giftcard,
                                    color: Colors.white,
                                  )),
                              title: Text("Transport"),
                              subtitle: Text(
                                "Uber, Patho",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontStyle: FontStyle.italic),
                              ),
                              trailing: Text("£1800"),
                            ),
                            ListTile(
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    Icons.shopping_basket,
                                    color: Colors.white,
                                  )),
                              title: Text("Shopping"),
                              subtitle: Text(
                                "wish, Apple",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              trailing: Text("£500"),
                            ),
                            ListTile(
                              leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                  )),
                              title: Text(
                                "Groceries",
                              ),
                              subtitle: Text(
                                "Consumables, Indomie",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              trailing: Text("£2500"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]));
  }
}
