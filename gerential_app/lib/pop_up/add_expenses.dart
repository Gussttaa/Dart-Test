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
    return Container(
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          bottom: 100,
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hoverColor: Colors.deepPurpleAccent,
                labelText: 'Descrição da despesa',
              ),),
              const SizedBox(height: 20),
              TextFormField(
                controller: _valueController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hoverColor: Colors.deepPurpleAccent,
                labelText: 'Valor da despesa',
              ),),
              const SizedBox(height: 20),


              ElevatedButton(
                  onPressed: ()=>{},
                  child: const Text('Adicionar'))

            ],
        ),
      ),
    );
  }
}
