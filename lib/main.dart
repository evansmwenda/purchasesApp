import 'package:flutter/material.dart';
import 'package:purchases_app/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactionList = [
    Transaction(
      id: 'trans_1',
      title: 'Sugar buying',
      amount: 34.67,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'trans_2',
      title: 'Noodles buying',
      amount: 14.52,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'trans_3',
      title: 'Vehicle buying',
      amount: 89.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("CARD CHART"),
              elevation: 5.0,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: "Title"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Amount"),
                  ),
                  FlatButton(
                    child: Text('Add Transactions'),
                    textColor: Colors.purple,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Column(
            children: transactionList.map((tx) {
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
          ),
        ],
      ),
    );
  }
}
