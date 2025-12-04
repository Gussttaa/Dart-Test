import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String Texto;
  Questao(this.Texto);

  @override
  Widget build(BuildContext context) {
    return Text(Texto);
  }
}
