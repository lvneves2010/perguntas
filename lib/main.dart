import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());


class _PerguntasAppState extends State<PerguntaApp> {


  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual são suas cores?',
      'respostas': [ 'Tricolor', 'Alvinegro', 'Alviverde', 'Canarinho', 'Sem preferência' ],
    },
    {
      'texto': "prefere cachorro ou gato?",
      'respostas': [ 'Cachorro', 'Gato', 'Os Dois', 'Nenhum', 'Sem preferência' ],
    },
    {
      'texto': "Qual o seu estilo?",
      'respostas': [ 'Rock', 'MPB', 'Pagode', 'Sertanejo', 'Funk', 'Trance' ],
    },
    {
      'texto': "Qual a sua estação?",
      'respostas': [ 'Primavera', 'Verão', 'Outono', 'Inverno' ],
    },
    {
      'texto': "Qual é o seu veneno ?",
      'respostas': [ 'Cerveja', 'Vinho', 'Whisky', 'Coca-cola', 'Red bull' ],
    },
    {
      'texto': "O que te prende na poltrona?",
      'respostas': [ 'Ficção', 'Fantasia', 'Comédia', 'Drama', 'Romance', 'Novela' ],
    },
    {
      'texto': "Qual ?",
      'respostas': [ 'Rock', 'MPB', 'Pagode', 'Sertanejo' ],
    },
    {
      'texto': "Qual ?",
      'respostas': [ 'Rock', 'MPB', 'Pagode', 'Sertanejo' ],
    },
    {
      'texto': "Qual ?",
      'respostas': [ 'Rock', 'MPB', 'Pagode', 'Sertanejo' ],
    },
    {
      'texto': "Qual o seu passeio ?",
      'respostas': [ 'Praia', 'Interior', 'Cachoeira', 'Clube', 'Minha Casa' ],
    },
  ];

  void _responder() {
    if(gotQuestion) {
      setState(() {
      _perguntaSelecionada++;
      });
    }
  }

  bool get gotQuestion {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<String> respostas = gotQuestion 
    ? _perguntas[_perguntaSelecionada]['respostas']
    : null;
    // List<Widget> lista = respostas.map((r) => Resposta(r, _responder )).toList();

    // for( String r in respostas){
    //   lista.add(Resposta(r, _responder ));
    // }



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas') ,
        ),
        body: gotQuestion? Column(
          children: <Widget>[
            Questao(_perguntas[_perguntaSelecionada]['texto']),
            ...respostas.map((r) => Resposta(r, _responder )).toList()
          ],
        ) : null,
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
