import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        actions: [
          Icon(
            Icons.tune,
            color: Colors.blue,
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [Text("34,567")],
      ),
    );
  }
}