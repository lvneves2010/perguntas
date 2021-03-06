import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int valor;
  final void Function() whenRestart;
  Resultado(this.valor, this.whenRestart);

  String get fraseResultado {
    if (valor < 8 ) {
      return 'Parabéns, ' + valor.toString();
    } else if (valor < 20) {
      return 'Muito bom, ' + valor.toString();
    } else if (valor < 40) {
      return 'Fantastico, ' + valor.toString();
    } else if (valor < 60) {
      return 'Sensacional, ' + valor.toString();
    } else if (valor < 70) {
      return 'The One!! ' + valor.toString();
    } else {
      return 'Perfect!! ' + valor.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Spacer(),
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        Spacer(),
        FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: whenRestart,
          child: Icon(Icons.autorenew),
        ),
        Spacer(),
        Spacer(),
      ],
    );
  }
}
