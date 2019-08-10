import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list.dart';
import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: "Shoes",
      amount: 56.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: "weekly groceries",
      amount: 16.50,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(_userTransactions),
      ],
    );
  }
}
