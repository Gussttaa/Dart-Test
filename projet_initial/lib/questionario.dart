import 'package:flutter/material.dart';
import 'main.dart';
import 'questoes.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List <Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;


  // Esse é o construtor -> a princípio, irá pegar as informações da classe Questionário (por isso o required)
  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> respostas = temPerguntaSelecionada
    ? perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>>
        : [];
    //  List <String> textoDasRespostas = temPerguntaSelecionada
    //      ? (perguntas[perguntaSelecionada]  ['respostas'] as List<String>)
    List<Widget> widgets = respostas
        .map((resp) => Resposta(resp['texto'] as String,
            () => responder(resp['pontuacao'].toString() as int)))
        .toList();
    //
    return Column(
        children: <Widget>[
          Questao(perguntas[perguntaSelecionada]['pergunta'] as String),
          ...widgets,
        ],
    );
}}
