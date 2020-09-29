import 'package:flutter/material.dart';

class RecomendItem extends StatelessWidget {
  const RecomendItem(this.firstname, this.gender, this.age, this.phone);

  final String firstname;
  final String gender;
  final String age;
  final String phone;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(child: Text(firstname)),
      title: Text(gender),
      subtitle: Text(age),
      trailing: Text(phone),
    );
  }
}
