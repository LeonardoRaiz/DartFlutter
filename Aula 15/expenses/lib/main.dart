import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({super.key});
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Despesas Pesoais')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Color.fromRGBO(75, 114, 187, 1.0),
                child: Text('Gráfico'),
                elevation: 5,
              ),
            ),
            Column(
              children: _trasactions.map((tr) {
                return Card(
                  child: Text(tr.title),
                );
              }).toList(),
            )
          ],
        ));
  }
}
