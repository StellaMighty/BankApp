// moved the TransactionItem from the main.dart to this widgets folder
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem(this.title, this.subtitle,
      this.trailing); //to define the properties of the item

  final String title;
  final String subtitle;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(100)),
        child: Icon(
          Icons.directions_car,
          color: Colors.white,
        ),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.deepPurple, fontStyle: FontStyle.italic),
      ),
      trailing: Text(trailing),
    );
  }
}
