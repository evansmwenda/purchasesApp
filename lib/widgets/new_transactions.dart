import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add Transactions'),
              textColor: Colors.purple,
              onPressed: () {
                print(amountController.text + titleController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
