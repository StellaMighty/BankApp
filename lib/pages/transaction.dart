import 'package:bankapp/pages/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final List _transactions = [
    {'title': 'Car Purchase', 'subtitle': 'Auto loan', 'amount': '\$200'},
    {'title': 'Food Stuff', 'subtitle': 'I but food', 'amount': '\$400'},
    {'title': 'Travel', 'subtitle': 'Lagos', 'amount': '\$1000'},
    {'title': 'School fee', 'subtitle': 'Year one fee', 'amount': '\$4000'},
    {'title': 'Garments', 'subtitle': 'clothing', 'amount': '\$300'},
    {'title': 'Devices', 'subtitle': 'Keyboard', 'amount': '\$500'},
    {'title': 'History Studies', 'subtitle': 'France', 'amount': '\$200'},
    {
      'title': 'Nation Building',
      'subtitle': 'Public Awareness',
      'amount': '\$900'
    },
  ];
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
                        child: ListView.builder(
                          itemCount: _transactions.length,
                          itemBuilder: (context, index) {
                            return TransactionItem(
                              _transactions[index]['title'],
                              _transactions[index]['subtitle'],
                              _transactions[index]['amount'],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      child: Form(
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
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
              //TODO:call a function that opens a form
            }));
  }
}
