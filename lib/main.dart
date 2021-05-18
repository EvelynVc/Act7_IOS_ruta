import 'package:flutter/material.dart';
import 'package:eve/route_generator.dart';

void main() => runApp(EveApp());

class EveApp extends StatelessWidget {
  //clase 1
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //aqui
      title: 'Ruta',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: "/",
      //home: PageOne(),
      onGenerateRoute: RouteGenerator.generateRoute,
    ); //fin de material app
  } //fin de widget
} //fin clase eve app

class PageOne extends StatelessWidget {
  String _params = "hola desde p1";
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PageOne({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key al a scaffold para acceder al scaffold desde otro widget hijo
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Pagina Evelyn Valles 1'),
      ),
      body: Center(
        child: Container(
          child: MaterialButton(
            child: Text(
              "Siguiente pagina",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.amber,
            onPressed: () {
              _openSecondPage(context);
            },
          ),
        ),
      ),
    );
  } //fin de Widget

  void _openSecondPage(BuildContext context) async {
    String _datoRetornadoDeSecondPage;
    // await para esperar que se regrese dato desde la pantalla que se abre
    await Navigator.of(context)
        .pushNamed(
      "/secondPage",
      arguments: _params,
    )
        .then(
      (response) {
        _datoRetornadoDeSecondPage = response;
      },
    );
    // acceso al scaffold para mostrar snackbar
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          "Texto regresado: $_datoRetornadoDeSecondPage",
        ),
      ),
    );
  } //fin de metodo _openSecondPage
} //fin de PageOne
