//import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';
import 'package:app_financeiro/pop_up/add_expenses.dart';
import 'package:flutter/material.dart';
import 'models/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //
      //   colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      // ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final _transactions = [
    Transaction (
      id: 't1',
      title: 'Gasolina',
      value: 250.55,
      dateTime: DateTime.now(),
    ),
    Transaction (
      id: 't1',
      title: 'Almoço no restaurante',
      value: 125.75,
      dateTime: DateTime.now(),
    ),
    Transaction (
      id: 't3',
      title: 'Gastos com a Egide',
      value: 250.55,
      dateTime: DateTime.now(),
    ),
    Transaction (
      id: 't4',
      title: 'Hot Wheels',
      value: 125.75,
      dateTime: DateTime.now(),
    ),
  ];

  void _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Faz o modal subir com o teclado
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return const modal_expenses(); // Chama o widget do seu arquivo add_expenses.dart
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses'),
        actions:[
        IconButton(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          icon:  Icon(Icons.add_circle_outline_sharp),
            onPressed: () => _openTransactionFormModal(context),
        ),
      ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
      Container(
        height: 230,
        child: Card(
          elevation: 5,
          child: SingleChildScrollView(
          child: Text('Carrossel de notificações'),
        ),
        ),
      ),
          Container(
            height: 230,
            child: Card(
              elevation: 5,
              child: SingleChildScrollView(
              child: Text('Despesas pessoais'),
            ),
            ),
          ),
          Container(
            height: 230,
            child: Card(
              elevation: 5,
              child: SingleChildScrollView(
              child: Column (
                  children: _transactions.map((tr) {
                    return Card(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(tr.title),
                            Text('Valor: R\$ ${tr.value}'),
                            Text('Data: ${tr.dateTime.day}/${tr.dateTime.month}/${tr.dateTime.year}'),
                          ],
                        ),
                      ),
                    );
                  }).toList()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}