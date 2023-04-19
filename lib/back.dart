import 'package:flutter/material.dart';
import 'dart:math';

class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {
  var _frases = [
    'Oloco Meu',
    'Tá Pegando Fogo Bixo!',
    'Você destruiu o meu Código!',
    'Estou mais sozinho que goleiro na hora do pênalti',
    'Talento e magnetismo não se compram na esquina.',
    'Ô loco, bixo! Brincadeira! Esta fera aí, meu!',
    'Quem sabe faz ao vivo, mas no Dart é Impossivel.',
    'ERRRRROU!'
  ];
  var _imagens = [
    "images/faustao_coroa.jpg",
    "images/faustao_thanos.jpg"
  ];
  var _frasesGerada= 'Clique abaixo para gerar uma frase!';

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _frasesGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('Faustão'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logofa.png'),
              Text(
                _frasesGerada,
                style: TextStyle(
                  fontSize:  25,
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
