import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estil = TextStyle(fontSize: 50);
  int _comptador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contador amb Stateful',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nombre de clicks:', style: _estil),
            Text('$_comptador', style: _estil),
          ],
        ),
      ),
      floatingActionButton: _crearBotons(),
    );
  }

  Widget _crearBotons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            onPressed: _zero, child: const Icon(Icons.exposure_zero)),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: _restar, child: const Icon(Icons.remove)),
        const SizedBox(width: 5),
        FloatingActionButton(onPressed: _sumar, child: const Icon(Icons.add)),
      ],
    );
  }

  void _sumar() {
    setState(() => _comptador++);
  }

  void _restar() {
    setState(() => _comptador--);
  }

  void _zero() {
    setState(() => _comptador = 0);
  }
}
