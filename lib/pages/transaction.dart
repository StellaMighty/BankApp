import 'package:bankapp/pages/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:bankapp/data/transaction_data.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final _formKey = GlobalKey<FormState>();

  var transactionList = new TransactionList();

  List _transactions;

  initState() {
    _transactions = transactionList.getList();
    super.initState();
  }

  String title;

  String subtitle;

  String amount;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double _height = mediaQuery.height;
    double _width = mediaQuery.width;
    return Scaffold(
        backgroundColor: Color(0xff2f26d9),
        appBar: AppBar(
            backgroundColor: Color(0xff2f26d9),
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.only(left: 30.0, top: 10, bottom: 10.0),
              child: IconButton(
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
                      height: _height * 0.02,
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
                    height: _height * 0.2,
                    width: _width * 0.4,
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
                    height: _height * 0.2,
                    width: _width * 0.4,
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
              SizedBox(
                height: _height * 0.02,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  height: _height * 0.8,
                  child: Column(children: [
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
                        child: ListView.builder(
                            itemCount: _transactions.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onLongPress: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Deleting'),
                                        content: Text('Are you sure?'),
                                        actions: [
                                          FlatButton(
                                              onPressed: () {
                                                setState(() {
                                                  _transactions.removeAt(index);
                                                });
                                                Navigator.pop(context);
                                              },
                                              child: Text('Yes')),
                                          FlatButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('No'))
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: TransactionItem(
                                  _transactions[index]['title'],
                                  _transactions[index]['subtitle'],
                                  _transactions[index]['amount'],
                                ),
                              );
                            }),
                      ),
                    )
                  ]),
                ),
              ),
            ]),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  context: context,
                  builder: (context) {
                    return Container(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Create a record',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Enter Title',
                                    border: OutlineInputBorder()),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Tile cannot be empty';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  title = value;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter a Subtitle",
                                    border: OutlineInputBorder()),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Subtitle cannot be empty';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  subtitle = value;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "Enter Amount",
                                    border: OutlineInputBorder()),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Amount cannot be empty';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  amount = value;
                                },
                              ),
                            ),
                            FlatButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();
                                    setState(() {});
                                    var item = {
                                      "title": title,
                                      "subtitle": subtitle,
                                      "amount": amount
                                    };
                                    transactionList.addTransaction(item);
                                    _formKey.currentState.reset();
                                    return null;
                                  }
                                  print('form failed');
                                },
                                child: Text('Add Item'))
                          ],
                        ),
                      ),
                    );
                  });
            }));
  }
}
