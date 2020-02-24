import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:purchases_app/models/transaction.dart';


class TransactionList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2.0,
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '\$${tx.amount}',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx.title,
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat().format(tx.date),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ));
      }).toList(),
    );
  }
}
