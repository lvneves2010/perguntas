import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(PerguntaApp());


class _PerguntasAppState extends State<PerguntaApp> {


  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
    _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual são suas cores?',
      "prefere cachorro ou gato?",
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas') ,
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Tricolor'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Alviverde'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Alvinegro'),
              onPressed: _responder,
            )
          ],
        ),
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

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _resetCounter() {
//     setState(() {
//       _counter = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Quantas vezes o botão foi apertado:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             FlatButton(
//               onPressed: _resetCounter,
//               child: Icon(Icons.autorenew),
//       ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
