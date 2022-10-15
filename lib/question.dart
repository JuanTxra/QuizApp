import 'dart:ui';

import 'package:flutter/Material.dart';

class Questao extends StatelessWidget {
  final String questionText;

  Questao(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
