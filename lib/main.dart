import 'package:flutter/material.dart';
import 'package:bankapp/pages/transaction.dart';
import 'package:bankapp/pages/Budget.dart';
import 'package:bankapp/pages/Recommendation.dart';

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

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  /// _open drawer push open a drawer in the current scaffold
  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  void _openNotificationDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  /// close drawer if open

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double _height = mediaQuery.height;
    double _width = mediaQuery.width;
    return SafeArea(
      /// this makes the app start from below the phone notification top bar
      child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,

            ///this tells Flutter not to automatically give us a leading
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                    //calls an app drawer method _openDrawer
                    onPressed: () => _openDrawer(),
                    icon: Icon(
                      Icons.format_align_left,
                      size: 15,
                    )),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                onPressed: () => _openNotificationDrawer(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/chi.jpg'),
                ),
              )
            ],
          ),
          drawerScrimColor: Color.fromRGBO(0, 0, 255, 0.2),
          drawer: Drawer(
            child: Column(
              children: [
                DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/chi.jpg"),
                        radius: 40, //the size of the avatar
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Creative Mints',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('creativemints@app.com')
                        ],
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.green,
                  ),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.blue,
                  ),
                  title: Text('Budget List'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    color: Colors.purple,
                  ),
                  title: Text('How to use'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Colors.red,
                  ),
                  title: Text('Share App'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.purple,
                  ),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
          endDrawer: Drawer(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                          color: Color(0xff000080),
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        title: Text('23 New Messages'),
                      ),
                      ListTile(
                        title: Text('2 New Cards added'),
                      ),
                      ListTile(
                        title: Text('Budget has just been updated'),
                      ),
                      ListTile(
                        title: Text('5 Updated Required'),
                      ),
                      ListTile(
                        title: Text('...'),
                      ),
                      ListTile(
                        title: Text('...'),
                      ),
                      ListTile(
                        title: Text('...'),
                      ),
                      ListTile(
                        title: Text('...'),
                      ),
                      ListTile(
                        title: Text('...'),
                      ),
                      ListTile(
                        title: Text('...'),
                      ),
                      ListTile(
                        title: Text('...'),
                      ),
                      ListTile(
                        title: Text('...'),
                      ),
                    ],
                  ),
                )
              ],
            ),
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
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
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
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
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
          )),
    );
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
