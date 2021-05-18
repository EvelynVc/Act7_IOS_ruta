import 'package:eve/main.dart';
import 'package:eve/second_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => PageOne(),
        ); //fin de MaterialPageRoute
      case "/secondPage":
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              texto: args,
            ), //fin de SecondPage
          ); //fin de MaterialPageRoute
        } else
          return _errorPage();
        break;
      default:
        return _errorPage();
    } //fin de switch
  } //fin de lista tipo de dynamico generateRoute

  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("ERROR"),
        ),
        body: Center(
          child: Text("Error page"),
        ), //fin de body
      ), //fin de Scaffold
    ); //fin de MaterialPageRoute
  } //fin de lista Route tipo dynamico error
} //fin de clase RouteGenerator
