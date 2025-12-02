import 'package:flutter/material.dart';

class PerguntaApp extends StatelessWidget {
  //const PerguntaApp({super.key});

  var perguntaSelecionada = 0;

  void responder() {
    perguntaSelecionada++;
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sual cor favorita',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(onPressed: responder, child: Text('Resposta 1')),

            ElevatedButton(
              onPressed: responder,
              /*() {print('Resposta 2 foi selecionada'); },*/
              child: Text('Resposta 2'),
            ),

            ElevatedButton(
              onPressed: responder,
              /*() => print('Resposta 3'),*/
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
/*
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/