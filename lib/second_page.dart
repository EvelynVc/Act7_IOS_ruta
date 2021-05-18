import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String texto;
  TextEditingController _textController = TextEditingController();
  SecondPage({Key key, this.texto}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla Evelyn Valles 2"),
      ), //fin de app bar
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(24.0),
              child: TextField(
                controller: _textController,
                maxLength: 28,
                decoration: InputDecoration(
                  labelText: "Ingrese palabra",
                  hintText: "Palabra",
                ), //fin de InputDecoration
              ), //fin de TextField
            ), //fin de Padding
            MaterialButton(
              child: Text(
                "Regresar",
                style: TextStyle(
                  color: Colors.white,
                ), //aqui
              ),
              color: Colors.amber,
              onPressed: () {
                Navigator.of(context).pop(_textController.text);
              }, //fin de onPressed
            ), //fin de MaterialButton
          ], //fin de Widget []
        ), //fin de Column
      ), //fin de body
    ); //fin de Scaffold
  } //fin de Widget
} //fin de SecondPage
