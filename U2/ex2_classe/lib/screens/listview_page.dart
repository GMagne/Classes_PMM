import 'dart:async';

import 'package:flutter/material.dart';

class LlistaPage extends StatefulWidget {
  const LlistaPage({super.key});

  @override
  State<LlistaPage> createState() => _LlistaPageState();
}

class _LlistaPageState extends State<LlistaPage> {
  List<int> _llistaNombres = [];
  int _darrerItem = 0;
  late ScrollController _scrollController;
  bool _carregant = false;

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _carregaNou();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels == 0) {
          print('Scroll a l\'inici');
        } else {
          //_carregaNou();
          fetchData();
        }
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Llistes'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(children: [
        _crearLlista(),
        _crearLoading(),
      ]),
    );
  }

  Widget _crearLlista() {
    return RefreshIndicator(
      onRefresh: obtenirPagina,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _llistaNombres.length,
        itemBuilder: (BuildContext context, int index) {
          final imatge = _llistaNombres[index];
          return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'), //393/200
              image:
                  NetworkImage('https://picsum.photos/id/${imatge}/500/400'));
        },
      ),
    );
  }

  void _carregaNou() {
    for (int i = 0; i < 5; i++) {
      _llistaNombres.add(_darrerItem);
      _darrerItem++;
    }
    setState(() {});
  }

  Future<Timer> fetchData() async {
    _carregant = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    return Timer(duration, peticioHTTP);
  }

  void peticioHTTP() {
    _carregant = false;
    _carregaNou();
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
  }

  Widget _crearLoading() {
    if (_carregant) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> obtenirPagina() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      // Purgam la llista de nombres
      _llistaNombres.clear();
      _darrerItem++;
      _carregaNou();
    });
    return Future.delayed(duration);
  }
}
