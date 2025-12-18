import 'package:flutter/material.dart';

class Resultado extends StatelessWidget{
   var String = 'Você respondeu todas as perguntas!';

  Resultado(int pontuacaoTotal, void Function() reiniciarQuestionario);

   @override
   Widget build(BuildContext context) {
     return Center(
       child: Text(String),
     );
   }

}
