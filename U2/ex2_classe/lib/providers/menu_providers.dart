import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle; //rootBundle

final menuProvider = new _MenuProvider();

class _MenuProvider {
  List<dynamic> opcions = [];

  MenuProvider() {
    //this.opcions = CarregarDades();
  }

  Future<List<dynamic>> CarregarDades() async {
    String resposta = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resposta);
    opcions = dataMap['rutes'];
    return opcions;
  }
}
