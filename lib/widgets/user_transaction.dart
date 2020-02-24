import 'package:flutter/material.dart';
import 'package:purchases_app/models/transaction.dart';
import 'package:purchases_app/widgets/new_transactions.dart';
import 'package:purchases_app/widgets/transaction_list.dart';


class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions =[
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
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
