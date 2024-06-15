import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _trasactions = [
    Transaction(
        id: 't1',
        title: 'Novo tênis corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta Luz',
        value: 150,
        date: DateTime.now()),
    Transaction(
        id: 't1',
        title: 'Novo tênis corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta Luz',
        value: 150,
        date: DateTime.now()),
    Transaction(
        id: 't1',
        title: 'Novo tênis corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta Luz',
        value: 150,
        date: DateTime.now()),
    Transaction(
        id: 't1',
        title: 'Novo tênis corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta Luz',
        value: 150,
        date: DateTime.now()),
    Transaction(
        id: 't1',
        title: 'Novo tênis corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta Luz',
        value: 150,
        date: DateTime.now()),
    Transaction(
        id: 't1',
        title: 'Novo tênis corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta Luz',
        value: 150,
        date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), title: title, value: value, date: DateTime.now(),);
      setState(() {
        _trasactions.add(newTransaction);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_trasactions),
        TransactionForm(_addTransaction)
      ],
    );
  }
}
