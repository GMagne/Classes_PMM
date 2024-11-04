import 'package:ex2/providers/menu_providers.dart';
import 'package:ex2/screens/alert_page.dart';
import 'package:ex2/utils/icono_string_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Components',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: _llista(),
    );
  }
}

Widget _llista() {
  return FutureBuilder(
      future: menuProvider.CarregarDades(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        //print('builder');
        //print(snapshot.data);
        return ListView(
          children: _llistaElements(context, snapshot.data),
        );
      });
}

List<Widget> _llistaElements(BuildContext context, List<dynamic>? data) {
  final List<Widget> elements = [Divider()];
  data?.forEach((element) {
    final widgetTemp = ListTile(
      title: Text(element['texte']),
      leading: getIcon(element['icona']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: () {
        Navigator.pushNamed(context, element['ruta']);
      },
    );
    elements
      ..add(widgetTemp)
      ..add(Divider());
  });
  return elements;
}
