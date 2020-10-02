import 'package:flutter/foundation.dart';

class TransactionList extends ChangeNotifier {
  List _transcations = [
    {"title": 'jasasoas', "subtitle": 'hadsahsdsa', "amount": '734'},
    {"title": 'jasasoas', "subtitle": 'hadsahsdsa', "amount": '734'}
  ];

  getList() {
    return _transcations;
  }

  addTransaction(value) {
    _transcations.add(value);

    notifyListeners();
    print('added successfully');
  }

  deleteTranscation(int index) {
    _transcations.removeAt(index);
    notifyListeners();
  }

//this is a getter
  int get transactionsCount => _transcations.length;

  double calculateTotalAmount() {
    var total = 0.0;
    _transcations.forEach((element) {
      total = total + double.parse(element['amount']);
    });
    //loop ended
    return total;
  }
}
