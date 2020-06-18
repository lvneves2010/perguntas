import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';
import './perguntasERespostas.dart';

main() => runApp(PerguntaApp());


class _PerguntasAppState extends State<PerguntaApp> {


  var _perguntaSelecionada = 0;
  var _valorTotal = 0;
  void _responder(int valor) {
    if(gotQuestion) {
      setState(() {
      _perguntaSelecionada++;
      _valorTotal += valor;
      });
    }
    print(_valorTotal);
  }

  void _restart() {
    setState(() {
      _perguntaSelecionada = 0;
      _valorTotal = 0;
    });
  }

  bool get gotQuestion {
    return _perguntaSelecionada < perguntasRespostas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas') ,
        ),
        body: gotQuestion
        ? Questionario(
          perguntas: perguntasRespostas, //arquivo à parte
          perguntaSelecionada: _perguntaSelecionada,
          quandoResponder: _responder,
          )
        : Resultado(_valorTotal, _restart)
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget {

  @override
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }

}

