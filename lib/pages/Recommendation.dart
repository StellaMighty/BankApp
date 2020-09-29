import 'package:flutter/material.dart';
import 'package:bankapp/pages/recomend_item.dart';

class Recommendation extends StatefulWidget {
  @override
  _RecommendationState createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  final _formkey = GlobalKey<FormState>();

  final List _Recc = [];
  String firstname;
  String age;
  String gender;
  String phone;

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
        leading: Padding(
          padding: EdgeInsets.only(left: 30.0, top: 10, bottom: 10.0),
          child: IconButton(
              onPressed: () =>
                  Navigator.pop(context), //takes you back to previous page
              icon: Icon(
                Icons.arrow_back_ios,
                size: 15,
                color: Colors.black,
              )),
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
                "LOCATE US TODAY",
                style: TextStyle(fontSize: 20, color: Color(0xff000080)),
              ),
              Text("Our other Branches to visit !",
                  style: TextStyle(fontStyle: FontStyle.italic)),
            ]),
            Column(
              children: [
                ListTile(
                  leading: Text("1"),
                  title: Text(
                      "We have so many branches scattered all over the country"),
                ),
                SizedBox(
                  height: _height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.lightBlue),
                  height: _height * 0.5,
                  child: ListView.builder(
                      itemCount: _Recc.length,
                      itemBuilder: (context, index) {
                        return RecomendItem(
                          _Recc[index]["firstname"],
                          _Recc[index]["gender"],
                          _Recc[index]["age"],
                          _Recc[index]["phone"],
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                context: context,
                builder: (context) {
                  return Container(
                    child: Form(
                      key: _formkey,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Make a List",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "First Name Only",
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Pls Input your First Name";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Gender",
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Pls Input your Gender";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Age",
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Pls Input your Age";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: " phone Number",
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Pls Input your Phone Number";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            FlatButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                onPressed: () {
                                  if (_formkey.currentState.validate()) {
                                    _formkey.currentState.save();
                                    setState(() {});
                                    var item = {
                                      "firstname": firstname,
                                      "gender": gender,
                                      "age": age,
                                      "phone": phone
                                    };
                                    _Recc.add(item);
                                    _formkey.currentState.reset();
                                    return null;
                                  }
                                  print("form failed");
                                },
                                child: Text("Add a Staff"))
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
