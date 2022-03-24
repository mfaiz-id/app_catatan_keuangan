import 'package:flutter/material.dart';

import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', title: 'Sepatu', amount: 20, time: DateTime.now()),
    Transaction(id: 't2', title: 'Sepeda', amount: 40, time: DateTime.now()),
  ];

  void _addTransaction(String inputTitle, double inputAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: inputTitle,
        amount: inputAmount,
        time: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
          addTransaction: _addTransaction,
        ),
        TransactionList(transactions: _userTransactions),
      ],
    );
  }
}
