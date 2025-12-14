import 'package:flutter/material.dart';
import './questoes.dart';
import './resposta.dart';



void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
    PerguntaAppState createState() {
    return PerguntaAppState();
  }

}
  class PerguntaAppState extends State<PerguntaApp> {
    var perguntaSelecionada = 0;
    final _perguntas = const [
      {
        'pergunta': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho' , 'Verde', 'Branco'],
      },
      {
        'pergunta': 'Qual é a sua comida favorita?',
        'respostas': ['Coelho', 'Cobra', 'Gato', 'Cachorro'],
      },
    ];

    void responder() {
      setState(() {
        perguntaSelecionada++;
      });
    }

    bool get temPerguntaSelecionada {
      return perguntaSelecionada < _perguntas.length;
    }

    @override
    Widget build(BuildContext context) {

      List <String> textoDasRespostas = temPerguntaSelecionada
          ? _perguntas[perguntaSelecionada]  ['respostas'] as List<String>
      : [];
        List<Widget> widgets = textoDasRespostas
          .map((t) => Resposta(t, responder))
          .toList();

      //List <Widget> Repostas = [];
      //for (String textoResp in textoDasRespostas) {Repostas.add(Resposta(textoResp, responder));};

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Perguntas')),
          body: temPerguntaSelecionada ? Column(
            children: <Widget>[
              Questao(_perguntas[perguntaSelecionada]['pergunta'] as String),
              ...widgets,
            ],
          ) : Center(
            child: Text('Você respondeu todas as perguntas!'),
          ),
        ),
      );
    }
  }

