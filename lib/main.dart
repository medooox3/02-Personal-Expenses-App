import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Expenses App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Container(
              width: double.infinity,
              height: 30,
              color: Colors.amberAccent,
              child: Text(
                "Chart!",
              ),
            ),
          ),
          NewTransaction(),
          TransactionList(),
        ],
      ),
    );
  }
}
