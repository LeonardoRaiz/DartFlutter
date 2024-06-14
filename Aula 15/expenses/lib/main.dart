import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  final titleController = TextEditingController();
  final valueController = TextEditingController();


  final _trasactions = [
    Transaction(
        id: 't1',
        title: 'Novo tênis corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(id: 't2', title: 'Conta Luz', value: 150, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Despesas Pesoais')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: const Card(
                color: Color.fromRGBO(75, 114, 187, 1.0),
                elevation: 5,
                child: Text('Gráfico'),
              ),
            ),
            Column(
              children: _trasactions.map((tr) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsetsDirectional.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple)),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'R\$ ${tr.value.toStringAsFixed(2)}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr.title,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat('d-MM-y').format(tr.date),
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: 'Título',
                      ),
                    ),
                    TextField(
                      controller: valueController,
                      decoration: InputDecoration(
                        labelText: 'Valor (R\$)',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.purple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            onPressed: () {
                              print(titleController.text);
                              print(valueController.text);
                            },
                            child: Text('Nova Transação')),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
