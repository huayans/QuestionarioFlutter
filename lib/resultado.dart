import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int ponto;
  final void Function() quandoReiniciarPerguntas;

  Resultado(this.ponto, this.quandoReiniciarPerguntas);
  String get fraseResultado {
    if (ponto < 8) {
      return 'Parabéns!';
    } else if (ponto < 12) {
      return 'Você é Bom!';
    } else if (ponto < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: (Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          )),
        ),
        FlatButton(
          onPressed: quandoReiniciarPerguntas,
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
