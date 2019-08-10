import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                    // onChanged: (val){
                    //   titleInput = val;
                    // },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    // onChanged: (val) => amountInput = val,
                  ),
                  FlatButton(
                    child: Text(
                      "Add Transaction",
                      style: TextStyle(color: Colors.purple),
                    ),
                    onPressed: () {
                      print("${titleController.text} \n${amountController.text}");
                    },
                  ),
                ],
              ),
            ),
          );
  }
}