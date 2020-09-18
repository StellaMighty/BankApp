import 'package:flutter/material.dart';

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
        body: Container(
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
                style: TextStyle(fontSize: 20),
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Transaction();
                    }));
                  },
                  child: Container(
                    width: 150,
                    height: 150,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Budget();
                    }));
                  },
                  child: Container(
                    width: 150,
                    height: 150,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 150,
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
                    width: 150,
                    height: 150,
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
                      width: 150,
                      height: 50,
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
                      width: 150,
                      height: 50,
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
        ));
  }
}

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.only(left: 30.0, top: 10, bottom: 10.0),
              child: IconButton(
                  //TODO: call an app drawer
                  onPressed: () => print("Pressed"),
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
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: Colors.blue,
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
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.money_off,
                          color: Colors.yellow,
                        ),
                        Text("£15,000", style: TextStyle(fontSize: 20)),
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

class Budget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
    );
  }
}
