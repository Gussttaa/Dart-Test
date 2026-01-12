import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class modal_expenses extends StatefulWidget {
  const modal_expenses({super.key});

  @override
  State<modal_expenses> createState() => _modal_expensesState();
}

class _modal_expensesState extends State<modal_expenses> {
  final _idController = TextEditingController();
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  final _dateTimeController = TextEditingController();

  final List<String> _expensesDestiny = ['CNPJ', 'DESPESAS PESSOAIS',];


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(),
            const SizedBox(height: 20),
            TextFormField(),
            const SizedBox(height: 20),


            ElevatedButton(
                onPressed: ()=>{},
                child: const Text('Adicionar'))

          ],
      ),
    );
  }
}
